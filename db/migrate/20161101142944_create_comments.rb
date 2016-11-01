class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :apartment_list_id

      t.timestamps
    end
  end
end
