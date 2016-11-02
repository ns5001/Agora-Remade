class Comment < ApplicationRecord
  belongs_to :apartment_list
  has_one :list, through: :apartment_list
  validates :text, :presence => true
end
