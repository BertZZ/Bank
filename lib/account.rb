class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(number)
    @balance = @balance + number
  end

  def withdraw(number)
    @balance = @balance - number
  end
end
