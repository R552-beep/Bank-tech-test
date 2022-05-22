class Account
  attr_reader :balance 
  
  def initialize 
    @balance = 0
  end

  def deposit(date = Date.today, amount)
    @balance += amount
  end

  def withdraw(date = Date.today, amount)
    @balance -= amount
  end

  def statement
    "balance\n£#{@balance}"
  end
end