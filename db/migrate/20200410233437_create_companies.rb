class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
    t.string :name 
    t.integer :number_of_employees
     t.integer :number_laid_off 
    t.timestamps :date_of_layoff 
    t.timestamps
    end
  end
end
