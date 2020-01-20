class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.text :description
      t.string :make_manufacturer
      t.string :country_of_origin
      t.string :serial_number
      t.float :quantity
      t.datetime :acquisition_date
      t.decimal :acquisition_cost, precision: 5, scale: 2
      t.string :estimated_useful_years
      t.integer :year_commissioned
      t.boolean :operational
      t.string :out_of_order
      t.string :operational_with_issues
      t.boolean :unverifiable
      t.string :department_location
      t.float :total
      t.text :remarks

      t.timestamps
    end
  end
end
