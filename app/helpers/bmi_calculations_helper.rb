module BmiCalculationsHelper
  def category_message(bmi)
    category = BMICategories::INDEX.detect do |cat|
      bmi.calculate_bmi.between?(*cat.range)
    end

    category.message
  end
end
