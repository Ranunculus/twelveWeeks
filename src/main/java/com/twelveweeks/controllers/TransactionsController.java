package com.twelveweeks.controllers;

import com.twelveweeks.controllers.request.TransactionRequest;
import com.twelveweeks.domain.enums.TransactionType;
import com.twelveweeks.domain.transactions.Expenses;
import com.twelveweeks.domain.transactions.Income;
import com.twelveweeks.domain.transactions.Transaction;
import com.twelveweeks.repository.CategoryRepository;
import com.twelveweeks.repository.ExpensesRepository;
import com.twelveweeks.repository.IncomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.Optional;

@Controller
public class TransactionsController {

    private static final String PAGE_NAME = "transactions";

    private final ExpensesRepository expensesRepository;
    private final IncomeRepository incomeRepository;
    private final CategoryRepository categoryRepository;

    @Autowired
    public TransactionsController(ExpensesRepository expensesRepository,
                                  IncomeRepository incomeRepository,
                                  CategoryRepository categoryRepository) {
        this.expensesRepository = expensesRepository;
        this.incomeRepository = incomeRepository;
        this.categoryRepository = categoryRepository;
    }

    @ModelAttribute
    public void fillModel(Model model) {
        model.addAttribute("pageName", PAGE_NAME);
        model.addAttribute("transactionRequest", new TransactionRequest());
    }

    @RequestMapping("/now")
    public String indexTest(Model model){
        ArrayList<Expenses> expenses = new ArrayList<>();
        BigDecimal total = BigDecimal.ZERO;
        for (Expenses expense : expensesRepository.findAll()) {
            total = total.add(expense.getValue());
            expenses.add(expense);
        }
        model.addAttribute("expenseRows", expenses);
        model.addAttribute("expenseTotal", total);

        ArrayList<Income> incomes = new ArrayList<>();
        total = BigDecimal.ZERO;
        for (Income income : incomeRepository.findAll()) {
            total = total.add(income.getValue());
            incomes.add(income);
        }
        model.addAttribute("incomeRows", incomes);
        model.addAttribute("incomeTotal", total);

        model.addAttribute("categories", categoryRepository.findAll());
        return "period";
    }

    @RequestMapping("/period")
    public String periodTransactions(Model model,
                                     @RequestParam @DateTimeFormat(pattern="yyyy-MM-dd") Date startDate,
                                     @RequestParam @DateTimeFormat(pattern="yyyy-MM-dd") Date endDate){

        ArrayList<Expenses> expenses = new ArrayList<>();
        BigDecimal total = BigDecimal.ZERO;
        for (Expenses expense : expensesRepository.findByDateBetween(startDate, endDate)) {
            total = total.add(expense.getValue());
            expenses.add(expense);
        }
        model.addAttribute("expenseRows", expenses);
        model.addAttribute("expenseTotal", total);

        total = BigDecimal.ZERO;
        ArrayList<Income> incomes = new ArrayList<>();
        for (Income income : incomeRepository.findByDateBetween(startDate, endDate)) {
            total = total.add(income.getValue());
            incomes.add(income);
        }
        model.addAttribute("incomeRows", incomes);
        model.addAttribute("incomeTotal", total);
        model.addAttribute("transactionForm", new TransactionRequest());
        return "period";
    }

    @GetMapping("/add")
    public String addTransaction(Model model, @Valid @ModelAttribute("transactionRequest") TransactionRequest transactionRequest, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("transactionForm", transactionRequest);
            model.addAttribute("categories", categoryRepository.findAll());
            return "period";
        }

        boolean isExpense = TransactionType.EXPENSE.equals(transactionRequest.getType());
        Transaction transaction = isExpense ? new Expenses() : new Income();

        transaction.setDate(Optional.ofNullable(transactionRequest.getDate()).orElse(new Date()));
        transaction.setType(transactionRequest.getType().name());
        transaction.setUserId(1);
        transaction.setValue(transactionRequest.getValue());
        transaction.setCategory(categoryRepository.findOneByName(transactionRequest.getCategory()));
        if (isExpense) {
            expensesRepository.save((Expenses) transaction);
        } else {
            incomeRepository.save((Income) transaction);
        }
        return "redirect:/";
    }

}
