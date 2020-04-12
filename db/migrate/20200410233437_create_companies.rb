class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
    t.string :name 
    t.integer :number_of_employees
    t.timestamps
    end
  end
end
