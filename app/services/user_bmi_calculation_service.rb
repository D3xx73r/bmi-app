class UserBMICalculationService
  def initialize(user = nil)
    @user = user
  end

  def create_for_user(weight:, height:)
    BmiCalculation.create(user: user, weight: weight, height: height)
  end

  private

  attr_reader :user
end
