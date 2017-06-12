require 'account'

describe Account do
  subject(:account) { described_class.new }
  it { is_expected.to be_a Account }

  it 'has a starting balance of 0' do
    expect(subject.balance).to equal(0)
  end

  describe '#deposit' do
    it 'changes the balance up' do
      account.deposit(500)
      expect(account.balance).to eq(500)
    end
  end

  describe '#withdraw' do
    it 'changes the balance down' do
      account.deposit(500)
      account.withdraw(200)
      expect(account.balance).to eq(300)
    end
  end
end
