class Comment < ApplicationRecord
  belongs_to :apartment_list
  has_one :list, through: :apartment_lists
  has_one :apartment, through: :apartment_lists
  validates :text, :presence => true
end
