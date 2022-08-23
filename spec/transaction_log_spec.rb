
require 'transaction_log'

describe Transaction_log do

  context "#display" do 
    it 'logs and shows the date of the transaction' do
      expect(subject.display).to eq "#{Time.new.strftime("%d/%m/%Y")} || ||  ||  "
    end

    it ' shows the amount withdrawn from the account' do
      debit_transaction = Transaction_log.new(debit: 10)
      expect(debit_transaction.display).to eq "#{Time.new.strftime("%d/%m/%Y")} || || 10 ||  "
    end

    it ' show the amount deposited to the account' do
      credit_transaction = Transaction_log.new(credit: 20)
      expect(credit_transaction.display).to eq "#{Time.new.strftime("%d/%m/%Y")} || 20||  ||  "
    end



  end
  
end    # it ' show the balance in the bank statement' do
#   balance_of_statment = Transaction_log.new(balance: 30.0)
#   expect(balance_of_statment.display).to eq "#{Time.new.strftime("%d/%m/%Y")} || || || 30.00 "
# end

# it ' show full transaction of the bank statement' do
#   statement = Transaction_log.new(credit: 5.0, debit: 15.0, balance: 70.0)
#   expect(statement.display).to eq "#{Time.new.strftime("%d/%m/%Y")} || 5.00|| 15.00|| 70.00 "
# end