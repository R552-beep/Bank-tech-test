
require_relative 'transaction' 
require_relative 'print' 

class Account
  attr_reader :balance, :statement
  
  def initialize
    @balance = 0.00
    @printer = Print.new 
    @statement = []
    
  end

  def deposit(amount)
    @balance += amount
    record_deposit(credit: amount, balance: @balance) 
  end

  def withdraw(amount)
    fail 'Insufficient funds' if @balance < amount 
    @balance -= amount 
    record_withdrawal(debit: amount, balance: @balance) 
  end

  def statement
    @printer.print("date || credit || debit || balance") 
    @printer.print(@statement)
  end

  private
    
  def record_deposit(credit: nil, balance: nil)
    amount = Transaction.new(credit: '%.2f' % credit, balance: '%.2f' % balance) 
    @statement << (amount.display_template)
  end
    
  def record_withdrawal(debit: nil, balance: nil)
    amount = Transaction.new(debit: '%.2f' % debit, balance: '%.2f' % balance) 
    @statement << (amount.display_template) 
  end
  
end