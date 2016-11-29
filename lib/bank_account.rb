class Bank_Account
  attr_reader :balance, :transactions, :index, :credit, :debit

  def initialize
    @balance = 10.0
    @transactions = {}
    @index = 1
    @credit = 0
    @debit = 0
  end

  def creditizer(number)
    @balance += number
    credit_transactions(number, "     ")
  end

  def debitizer(number)
    @balance -= number
    debit_transactions("     ", number)
  end



private

  def credit_transactions(credit, debit)
    @transactions[@index] = ["Date", credit, debit, @balance]
    @index += 1
  end

  def debit_transactions(credit, debit)
    @transactions[@index] = ["Date", credit, debit, @balance]
    @index += 1
  end



end
