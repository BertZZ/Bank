require 'transactions'
require 'account'

describe Transaction do
  subject(:transaction) { described_class.new }
  it { is_expected.to be_a Transaction }

  describe '#deposit' do
    it 'creates record of deposit' do
      account = Account.new
      account.deposit(500)
      expect(account.balance).to eq(500)
      expect(account.transaction.history).to eq([{:date=>Time.now.strftime('%d/%m/%Y'), :credit=>500, :debit=>"N/A", :balance=>500}])
    end
  end

  describe '#withdraw' do
    it 'creates record of withdrawal' do
      account = Account.new
      account.deposit(500)
      account.withdraw(300)
      expect(account.transaction.history[-1]).to eq({:date=>Time.now.strftime('%d/%m/%Y'), :credit=>"N/A", :debit=>300, :balance=>200})
    end
  end
end
