
require 'account'

describe Account do

  let(:account) { Account.new }
 
  context "#bank account" do 
    it 'has a starting balance of 0' do
      account.balance
      expect(account.balance).to eq 0
    end
 
    it "lets you deposit funds into your account" do
      account.deposit(100) 
      expect(account.balance()).to eq 100
    end
  
    it "lets you withdraw funds from your account" do
      account.deposit(100)
      account.withdraw(50)
      expect(account.balance()).to eq 50
    end
  
  end
  
  context "#print statement" do
    it " lets you print a bank statement" do
      account.deposit(100)
      account.withdraw(50)
      expect { account.statement }.not_to raise_error
    end
  end

  context "#raises error" do
    it " should raise an error if no funds are avaialble " do 
      expect { account.withdraw(5) }.to raise_error ("Insufficient funds")
    end
  end
  
end