class Transaction
  attr_reader :history

  def initialize
    @history = []
  end

  def deposit(number, balance)
    @transaction = { date: Time.now.strftime('%d/%m/%Y'), credit: 'N/A', debit: 'N/A', balance: nil}
    @transaction[:credit] = number
    @transaction[:balance] = balance
    @history << @transaction
  end

  def withdraw(number, balance)
    @transaction = { date: Time.now.strftime('%d/%m/%Y'), credit: 'N/A', debit: 'N/A', balance: nil}
    @transaction[:debit] = number
    @transaction[:balance] = balance
    @history << @transaction
  end

end
