class AddColumnUseridToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :user_id, :integer
  end
end
