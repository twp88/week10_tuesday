class Bank_Account
  attr_reader :balance, :transactions, :index, :credit, :debit, :time

  def initialize
    @balance = 10.0
    @transactions = {}
    @index = 1
    @credit = 0
    @debit = 0
    @time = 0
  end

  def creditizer(number)
    time_me
    @balance += number
    credit_transactions(number, "     ")
  end

  def debitizer(number)
    time_me
    @balance -= number
    debit_transactions("     ", number)
  end

  def time_me
    @time = Time.new
    @time = @time.inspect
  end

  def print_balance
    @transactions.each {|k, v| puts k, v}
  end


private

  def credit_transactions(credit, debit)
    @transactions[@index] = ['||', @time, '||', credit, '||', debit, '||', @balance]
    @index += 1
  end

  def debit_transactions(credit, debit)
    @transactions[@index] = [@time, credit, debit, @balance]
    @index += 1
  end



end
