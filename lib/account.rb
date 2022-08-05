require_relative 'transaction_log'

class Account
  attr_reader :balance
  
  def initialize
    # @transaction_log = []
    @balance = 0.00
  end

  def deposit(amount)
    @balance += amount
    amount = '%.2f'%amount 
    # @transaction_log << "#{amount} || Debit || #{balance}"
  end

  def withdraw(amount)
    @balance -= amount
    amount = '%.2f'%amount 
    # @transaction_log << "|| Credit ||#{amount} || #{balance}"
  end

  def balance_total
    return @balance 
  end

  # def print_statement
  #   puts "date || credit || debit || balance"
  #   @transaction_log.reverse.each do
  #     |element| 
  #     puts element
  #   end  
  # end

end