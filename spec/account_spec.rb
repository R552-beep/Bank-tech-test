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
      account.deposit(Date.today, 100) 
      expect(account.balance()).to eq 100
    end
  end

  context "#withdraw" do
    it "lets you withdraw funds from your account" do
      account.deposit(Date.today, 100)
      account.withdraw(50)
      expect(account.balance()).to eq 50
    end
  end

  context "statement" do
    it "prints the current balance" do
      account.deposit(Date.today, 100)
      account.withdraw(Date.today, 50)
      expect(account.statement).to eq "balance\n£50"
    end
  end


end