class OysterCard

attr_reader :balance
LIMIT = 90
  def initialize(balance = 0)
    @balance = balance
  end

  def top_up(amount)
    raise "£90 balance maximum exceeded. Balance: #{@balance}" if self.over_limit?(amount)
    @balance += amount
  end


  def over_limit?(money_added)
    (@balance + money_added) > LIMIT
  end

end
