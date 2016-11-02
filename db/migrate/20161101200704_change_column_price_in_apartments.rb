class ChangeColumnPriceInApartments < ActiveRecord::Migration[5.0]
  def change
    change_column(:apartments, :price, :string)
  end
end
