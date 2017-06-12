require 'printer'
require 'account'

describe Printer do

  it 'Can get the transactions from the account' do
    acc = Account.new
    printer = Printer.new(acc)
    acc.deposit(300)
    expect(printer.transactions).to eq([{:date=> Time.now.strftime('%d/%m/%Y'), :credit=>300, :debit=>"N/A", :balance=>300}])
  end
end
