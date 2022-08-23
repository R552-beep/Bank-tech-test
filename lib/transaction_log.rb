
class Transaction_log
  
  def initialize(credit: nil, debit: nil, balance: nil)

    @date = Time.new
    @debit = debit
    @credit = credit
    @balance = balance

    def date
      @date.strftime('%d/%m/%Y')
    end

    def display
      "#{date} || #{@credit}|| #{@debit} || #{@balance} "
    end

    

   
    
  end
end