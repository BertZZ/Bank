require 'account'

describe Account do
  subject(:account) { described_class.new }
  it { is_expected.to be_a Account }

  it 'has a starting balance of 0' do
    expect(subject.balance).to equal(0)
  end

  it 'starts with an empty array of transactions' do
    expect(subject.transactions).to eq([])
  end

  describe '#deposit' do
    it 'Adds money to the balance' do
      account.deposit(300)
      expect(subject.balance).to equal(300)
    end
    it 'Can handle multiple deposits' do
      account.deposit(300)
      account.deposit(300)
      expect(subject.balance).to equal(600)
    end
    it 'Creates a hash of the transaction and add it to the transactions array' do
      account.deposit(300)
      expect(subject.transactions).not_to be_empty
      expect(subject.transactions).to eq([{ date: Time.now.strftime('%d/%m/%Y'), credit: 300, debit: 'N/A', balance: 300 }])
    end
  end

  describe '#withdraw' do
    it 'Removes money from the account' do
      account.deposit(1000)
      account.withdraw(300)
      expect(subject.balance).to equal(700)
    end
    it 'Creates a hash of the transaction and add it to the transactions array' do
      account.deposit(1000)
      account.withdraw(300)
      expect(subject.transactions).not_to be_empty
      expect(subject.transactions[-1]).to eq(date: Time.now.strftime('%d/%m/%Y'), credit: 'N/A', debit: 300, balance: 700)
    end
  end
end
