class CreateBmiCalculations < ActiveRecord::Migration[5.2]
  def change
    create_table :bmi_calculations do |t|
      t.float :height, null: false, default: 0
      t.float :weight, null: false, default: 0
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end
