class Transfer

  def initialize(sender, reciver, amount)
    @sender = sender
    @reciver = reciver
    @amount = amount
    @status = "pending"
  end
end
