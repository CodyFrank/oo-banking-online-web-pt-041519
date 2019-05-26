class Transfer
  attr_accessor :status
  attr_reader :sender, :reciver, :amount
  def initialize(sender, reciver, amount)
    @sender = sender
    @reciver = reciver
    @amount = amount
    @status = "pending"
  end
end
