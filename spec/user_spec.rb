require 'user'

describe User do
  subject(:user) { described_class.new }
  it {is_expected.to be_a User}

  it 'has a starting balance of 0' do
    expect(subject.balance).to equal(0)
  end
end
