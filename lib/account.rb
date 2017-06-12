class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(number)
    @balance += number
    transaction = { date: Time.now.strftime('%d/%m/%Y'), credit: number, debit: 'N/A', balance: @balance }
    @transactions << transaction
  end

  def withdraw(number)
    @balance -= number
    transaction = { date: Time.now.strftime('%d/%m/%Y'), credit: 'N/A', debit: number, balance: @balance }
    @transactions << transaction
  end
end
