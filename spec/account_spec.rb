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

    it 'allows client to make a withdrawal' do
      expect { account.withdraw(Date.today, 1000) }.to change{ account.balance }.by -1000
    end
  
  end

  context "#prints account statement" do
    it "lets you prints an account statment " do
      account.deposit(Date.today, 2000)
      account.withdraw(Date.today, 500)
      expect(account.print_statement).to eq (["2022-05-23 || No Credit ||500 || 1500", "2022-05-23 ||2000 || No Debit || 2000"])
    end
        
  end


end