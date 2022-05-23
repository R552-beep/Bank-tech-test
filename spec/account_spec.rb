require 'account'
require 'date'

describe Account do
  let(:account) { Account.new }

  context "#bank account" do 
    it 'has a starting balance of 0' do
      account.balance
      expect(account.balance).to eq 0
    end
  end

  context "#deposit" do
    it "lets you deposit funds into your account" do
      account.deposit(100, Date.today) 
      expect(account.balance()).to eq 100
    end
  end

  context "#withdraw" do
    it "lets you withdraw funds from your account" do
      account.deposit(100, Date.today)
      account.withdraw(50)
      expect(account.balance()).to eq 50
    end
  end

  context "#prints account statement" do
    it "lets you prints an account statment " do
      account.deposit(2000, Date.today)
      account.withdraw(500, Date.today)
      expect(account.print_statement).to eq (["2022-05-23 || No Credit ||500 || 1500", "2022-05-23 ||2000 || No Debit || 2000"])
    end      
  end    
  
end