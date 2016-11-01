class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.integer :price
      t.string :location
      t.string :link
      t.string :picture
      t.string :description
      t.string :bedrooms
      t.string :bathrooms
      t.timestamps
    end
  end
end
