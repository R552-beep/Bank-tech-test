require "date"

class Account
  attr_reader :balance, :transaction_log
  
  def initialize
    @transaction_log = []
    @balance = 0
  end

  def deposit(amount, date = Date.today)
    @balance += amount
    @transaction_log << "#{date} ||#{amount} || No Debit || #{balance}"
  end

  def withdraw(amount, date = Date.today)
    @balance -= amount
    @transaction_log << "#{date} || No Credit ||#{amount} || #{balance}"
  end

  def balance_total
    return @balance
  end

  def print_statement
    puts "date || credit || debit || balance"
    @transaction_log.reverse.each do
      |element| 
      puts element
    end  
  end
  
end