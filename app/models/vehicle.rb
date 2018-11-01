class Vehicle < ApplicationRecord
  has_many :accessories_vehicles
  has_many :accessories, :through => :accessories_vehicles

  accepts_nested_attributes_for :accessories

end
