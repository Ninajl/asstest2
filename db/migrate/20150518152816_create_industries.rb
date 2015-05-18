class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.string :name
      t.text :description
      t.belongs_to :company
      t.timestamps null: false
    end
  end
end
