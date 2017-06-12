require_relative 'account'

class Printer
  attr_reader :transactions

  def initialize(account)
    @transactions = account.transactions
  end

  def print
    puts 'date || credit || debit || balance'
    @transactions.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end
end
