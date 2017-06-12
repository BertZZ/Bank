require "account"
require "transactions"

class Printer
  def print(transactions)
    puts "date || credit || debit || balance"
    transactions.reverse.each do |transaction|
      puts "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]}"
    end
  end
end
