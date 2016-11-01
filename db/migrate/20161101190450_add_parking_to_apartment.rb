class AddParkingToApartment < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :parking, :string
  end
end
