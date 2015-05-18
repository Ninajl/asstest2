class CreateCompaniesAndIndustries < ActiveRecord::Migration
  def change

    create_table :companies_industries do |t|
      t.belongs_to :company, index: true
      t.belongs_to :industry, index: true
    end
  end
end
