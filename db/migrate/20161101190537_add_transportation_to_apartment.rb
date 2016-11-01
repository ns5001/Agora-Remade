class AddTransportationToApartment < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :transportation, :string
  end
end
