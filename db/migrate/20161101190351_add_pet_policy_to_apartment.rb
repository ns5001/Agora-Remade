class AddPetPolicyToApartment < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :pet_policy, :string
  end
end
