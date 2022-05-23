# Bank-tech-test

## Task:

My task for this project was to create practice tech test.
Focus for this project is to practice OO design and TDD skills.
This is a solo project where it will give us the opportunity to review our own code so we can practice reflecting and improving our own work.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or Node.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

## Instructions for setup and interaction on IRB.

* clone this repo `https://github.com/R552-beep/Bank-tech-test.git`
* `cd into the repository folder.
* `rspec to run tests.
* load the programme in IRB `require './lib/account.rb'
* Create an account: `account = Account.New`
* Deposite funds: `account.deposit(100)`
* Withdraw funds: `account.withdraw(50)`
* Printing a Statement: `account.print_statement`


### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

User Story
```
As a bank customer,
So that I can add money to my bank account,
I'd like to be able to deposit my funds.

As a bank customer,
So that I can take out money,
I'd like to be able to withdraw funds.

As a bank customer,
So that I can see all activity in my account,
I'd like to sea all transaction history with date.

As a bank customer,
So that I can check how much money is in my account,
I'd like to be able to print my bank statement.
```




