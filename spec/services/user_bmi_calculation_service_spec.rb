require 'rails_helper'

RSpec.describe UserBMICalculationService do
  subject(:service) { described_class.new(user) }

  let(:user) { create(:user) }
  let(:bmi_calculation) { create(:bmi_calculation, user: user) }

  let(:bmi) do
    {}.tap do |hash|
      hash[:weight] = 69
      hash[:height] = 1.71
    end
  end

  describe '#create_for_user' do
    it 'creates a new BMI calculation for a user' do
      expect { service.create_for_user(weight: bmi[:weight], height: bmi[:height]) }
        .to change { BmiCalculation.count }
    end

    it 'does not crteate BMI if params are missing' do
      expect { service.create_for_user(weight: nil, height: bmi[:height]) }
        .not_to change { BmiCalculation.count }
    end
  end
end
