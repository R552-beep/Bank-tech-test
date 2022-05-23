require 'account'

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
      account.deposit(100, time = Time.new.strftime("%d/%m/%Y")) 
      expect(account.balance()).to eq 100
    end
  end

  context "#withdraw" do
    it "lets you withdraw funds from your account" do
      account.deposit(100, time = Time.new.strftime("%d/%m/%Y"))
      account.withdraw(50)
      expect(account.balance()).to eq 50
    end
  end

  context "#prints account statement" do
    it "lets you prints an account statment " do
      account.deposit(2000, time = Time.new.strftime("%d/%m/%Y"))
      account.withdraw(500, time = Time.new.strftime("%d/%m/%Y"))
      expect(account.print_statement).to eq (["23/05/2022 || No Credit ||500 || 1500", "23/05/2022 ||2000 || No Debit || 2000"])
    end      
  end    

end