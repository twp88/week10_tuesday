class Bank_Account
  attr_reader :what, :hi

  def initialize
    @what = 10
    @hi = "hi"
  end

  def add(number)
    @what += number
  end

end
