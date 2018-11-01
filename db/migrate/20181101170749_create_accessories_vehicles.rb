class CreateAccessoriesVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :accessories_vehicles do |t|
      t.references :accessory, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end
