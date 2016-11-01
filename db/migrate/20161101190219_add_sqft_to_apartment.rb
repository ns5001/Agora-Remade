class AddSqftToApartment < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :sqft, :string
  end
end
