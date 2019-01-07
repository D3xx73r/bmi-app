class BmiCalculation < ApplicationRecord
  validates :height, :weight, presence: true
  belongs_to :user

  def calculate_bmi
    square_height = (height ** 2).to_f
    (weight / square_height).round(3)
  end
end
