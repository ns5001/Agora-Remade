class Apartment < ApplicationRecord
  has_many :apartment_lists
  has_many :lists, :through => :apartment_lists
  has_many :tours
  scope :most_popular, -> { joins(:lists).group(:apartment_id).having("COUNT(*)").order('id DESC').limit(3) }
  scope :lowest_highest, -> {order('price ASC')}
end
