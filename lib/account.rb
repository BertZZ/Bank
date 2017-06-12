require_relative 'transactions'
require_relative 'printer'

class Account # It knows about the that have occured
  attr_reader :balance, :printer, :transaction


  def initialize(transaction: Transaction.new, printer: Printer.new)
    @balance = 0
    @printer = printer
    @transaction = transaction
  end

  def deposit(number)
    @balance += number
    @transaction.deposit(number, @balance)
  end

  def withdraw(number)
    @balance -= number
    @transaction.withdraw(number, @balance)
  end

  def print
    @printer.print(@transaction.history)
  end
end
