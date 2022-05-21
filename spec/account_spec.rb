require 'account'

describe Account do
  context "#bank account" do 
    it 'has a starting balance of 0' do
      account = Account.new
      account.balance
      expect(account.balance).to eq 0
    end
  end
end