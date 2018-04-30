package com.twelveweeks.repository;

import com.twelveweeks.domain.budget.Budget;
import org.springframework.data.repository.CrudRepository;

public interface BudgetRepository extends CrudRepository<Budget, Integer> {
}
