class Company < ActiveRecord::Base
  belongs_to :city
  has_many :buses
  has_many :users
  has_many :routes
end
