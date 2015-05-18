class Company < ActiveRecord::Base
  belongs_to :industry
  has_many :industries
end
