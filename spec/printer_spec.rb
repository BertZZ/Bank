require 'printer'
require 'account'

describe Printer do

  it 'Can get the transactions from the account' do
    acc = Account.new
    printer = Printer.new(acc)
    acc.deposit(300)
    expect(printer.transactions).to eq([{:date=> Time.now.strftime('%d/%m/%Y'), :credit=>300, :debit=>"N/A", :balance=>300}])
  end

  it "should print the transactions to the console" do
    acc = Account.new
    printer = Printer.new(acc)
    acc.deposit(200)
    acc.deposit(567)
    expect { printer.print }.to output("date || credit || debit || balance\n12/06/2017 || 567 || N/A || 767\n12/06/2017 || 200 || N/A || 200\n").to_stdout
  end
end
