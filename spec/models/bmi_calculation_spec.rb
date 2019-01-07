require 'rails_helper'

RSpec.describe BmiCalculation, type: :model do
  it { is_expected.to validate_presence_of(:height) }
  it { is_expected.to belong_to(:user) }

  let(:user) { create(:user) }
  subject(:bmi) { create(:bmi_calculation, user: user) }
  let(:my_bmi) { 23.597 }

  describe '#calculate_bmi' do
    it 'returns computed BMI for a calculation record' do
      expect(bmi.calculate_bmi).to eq(my_bmi)
    end
  end
end
