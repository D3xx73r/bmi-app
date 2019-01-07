module BMICategories
  INDEX = [
    BMICategory.new([0, 15], 'Very severely underweight'),
    BMICategory.new([15, 16], 'Severely underweight '),
    BMICategory.new([16, 18.5], 'Underweight'),
    BMICategory.new([18.5, 25], 'Normal (healthy weight)'),
    BMICategory.new([25, 30], 'Overweight'),
    BMICategory.new([30, 35], 'Obese Class I (Moderately obese)'),
    BMICategory.new([35, 40], 'Obese Class II (Severely obese)'),
    BMICategory.new([40, 45], 'Obese Class III (Very Severely obese)'),
    BMICategory.new([45, 50], 'Obese Class IV (Morbidly Obese)'),
    BMICategory.new([50, 60], 'Obese Class V (Super Obese)'),
    BMICategory.new([60, 100], 'Obese Class VI (Hyper Obese)')
  ]
end
