class Industry < ActiveRecord::Base
  has_and_belongs_to_many :companies

  validates_presence_of :name, :description, :company_id
end
