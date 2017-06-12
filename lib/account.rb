class Account # It knows about the transactions that have occured
  attr_reader :balance
  attr_accessor :transactions

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
