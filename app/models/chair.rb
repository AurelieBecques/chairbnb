class Chair < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :price_per_day, presence: true
  has_one_attached :photo

end
