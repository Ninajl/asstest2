class Company < ActiveRecord::Base

  has_and_belongs_to_many :industries
  validates_presence_of :name, :description, :price

end
