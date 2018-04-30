package com.twelveweeks.domain.budget;

import com.twelveweeks.domain.enums.BudgetType;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "BUDGET")
public class Budget {

    @Id
    @GeneratedValue
    @Column(name = "ID", unique = true, nullable = false)
    private Integer id;

    @Column(name = "TYPE")
    private BudgetType period;

    @Column(name = "AMOUNT")
    private BigDecimal amount;

    @Transient
    private String currency;

    public Budget(BudgetType period, BigDecimal amount) {
        this.period = period;
        this.amount = amount;
    }

    public BudgetType getPeriod() {
        return period;
    }

    public void setPeriod(BudgetType period) {
        this.period = period;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }
}
