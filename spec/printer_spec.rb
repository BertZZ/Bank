require 'printer'
require 'account'

describe Printer do

  it "should print the transactions to the console" do
    account = Account.new
    account.deposit(200)
    account.deposit(567)
    puts account
    expect { account.print }.to output("date || credit || debit || balance\n12/06/2017 || 567 || N/A || 767\n12/06/2017 || 200 || N/A || 200\n").to_stdout
  end
end
