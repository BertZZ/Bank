require 'account'

describe Account do
  subject(:account) { described_class.new }
  it { is_expected.to be_a Account}

  it 'has a starting balance of 0' do
    expect(subject.balance).to equal(0)
  end
end
