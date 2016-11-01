class AddListIdToApartment < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :list_id, :integer
  end
end
