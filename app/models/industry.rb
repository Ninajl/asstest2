class Industry < ActiveRecord::Base
  has_many :companies
  validates_presence_of :name, :description
end
