class Bank_Account
  attr_reader :balance, :transactions, :index, :credit, :debit

  def initialize
    @balance = 0.0
    @transactions = {}
    @index = 1
    @credit = 0
    @debit = 0
  end

  def creditizer(number)
    @balance += number
    credit_transactions
  end

  

private

  def credit_transactions
    @transactions[@index] = ["Date", @credit, @debit, @balance]
    @index += 1
  end





end
