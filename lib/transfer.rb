class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    valid = false
    if @sender.valid? && @receiver.valid?
      valid = true
    end
    return valid
  end

  def execute_transaction
    if @sender.balance > @amount
      if valid? && self.status == "pending"
        @sender.balance -= @amount
        @receiver.balance += @amount
        self.status = "complete"
      end
    else
      "Transaction rejected. Please check your account balance."
    end
  end
end
