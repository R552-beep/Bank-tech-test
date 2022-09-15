
require 'transaction'

describe Transaction do
  
  before(:each) do
    @date = Date.today.strftime('%d/%m/%Y')
  end  
  
  context "#display template" do 
    
    it 'displays the date of the transaction' do  
      expect(subject.display_template).to eq "#{@date} || ||  ||  " 
    end
 
    it 'displays the current debited amount' do 
      debit = Transaction.new(debit: 100.0) 
      expect(debit.display_template).to eq "#{@date} || || 100.0 ||  "
    end
  
    it 'displays the current credited amount' do 
      credit = Transaction.new(credit: 200.0) 
      expect(credit.display_template).to eq "#{@date} || 200.0||  ||  "
      
    end
  
    it 'displays the balance on the bank statement' do 
      statement_balance = Transaction.new(balance: 300.0)  
      expect(statement_balance.display_template).to eq "#{@date} || ||  || 300.0 "
    end
   
    it 'displays full transaction history in a form of a statement' do 
      statement = Transaction.new(credit: 50.0, debit: 150.0, balance: 700.0) 
      expect(statement.display_template).to eq "#{@date} || 50.0|| 150.0 || 700.0 "
    end
  end    
end    