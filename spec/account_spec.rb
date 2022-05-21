require 'account'

describe Account do
  context "#bank account" do 
    it 'has a starting balance of 0' do
      account = Account.new
      account.balance
      expect(account.balance).to eq 0
    end
  end

  context "#deposit" do
    it "lets you deposit funds into your account" do
      account = Account.new
      account.deposit(100) 
       expect(account.balance()).to eq 100
    end
  end

  context "#withdrawl" do
    it "lets you withdrawl funds from your account" do
      account = Account.new
      account.deposit(100)
      account.withdrawl(50)
      expect(account.balance()).to eq 50
    end
  end


end