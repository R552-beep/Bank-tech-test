class Account
  attr_reader :balance, :transaction_log
  
  def initialize
    @transaction_log = []
    @balance = 0
  end

  def deposit(amount, time = Time.new.strftime("%d/%m/%Y"))
    @balance += amount
    @transaction_log << "#{time} ||#{amount} || Debit || #{balance}"
  end

  def withdraw(amount, time = Time.new.strftime("%d/%m/%Y"))
    @balance -= amount
    @transaction_log << "#{time} || Credit ||#{amount} || #{balance}"
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