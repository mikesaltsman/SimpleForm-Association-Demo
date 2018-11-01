class AccessoriesVehicle < ApplicationRecord
  belongs_to :accessory
  belongs_to :vehicle
end
