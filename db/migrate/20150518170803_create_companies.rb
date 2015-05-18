class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.belongs_to :industry
      t.timestamps
    end
  end
end
