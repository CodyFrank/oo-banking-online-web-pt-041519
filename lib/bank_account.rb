class BankAccount
  attr_reader :name
  attr_accessor :balance, :open
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
end
