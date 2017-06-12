require 'account'

describe Account do
  subject(:account) { described_class.new }
  it { is_expected.to be_a Account}

  it 'has a starting balance of 0' do
    expect(subject.balance).to equal(0)
  end

  it 'starts with an empty array of transactions' do
    expect(subject.transactions).to be_a(Array)
    expect(subject.transactions).to be_empty
  end

  describe '#deposit' do
    it 'Adds money to the balance' do
      account.deposit(300)
      expect(subject.balance).to equal(300)
    end
  end

  describe '#withdraw' do
    it 'Removes money from the account' do
      account.deposit(1000)
      account.withdraw(300)
      expect(subject.balance).to equal(700)
    end
  end
end
