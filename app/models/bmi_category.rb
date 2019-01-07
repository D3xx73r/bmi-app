class BMICategory
  attr_reader :range, :message

  def initialize(range, message)
    @range = range
    @message = message
  end
end
