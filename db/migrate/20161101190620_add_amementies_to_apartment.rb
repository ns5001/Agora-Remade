class AddAmementiesToApartment < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :amementies, :string
  end
end
