class CreateCompanyLayoffs < ActiveRecord::Migration[6.0]
  def change
    create_table :company_layoffs do |t|
      t.integer :number_laid_off
      t.timestamp :time_of_layoff
      t.references :company, index: true
      t.timestamps
    end
  end
end
