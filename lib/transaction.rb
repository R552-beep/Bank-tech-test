
require 'date'

class Transaction
  
 def initialize(credit: nil, debit: nil, balance: nil)
 
    @date = Date.today.strftime('%d/%m/%Y')
    @credit = credit
    @debit = debit
    @balance = balance
 end  
    
 def display_template  
    "#{@date} || #{@credit}|| #{@debit} || #{@balance} "
  end
end