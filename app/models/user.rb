class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chairs, dependent: :destroy
  has_many :owner_bookings, through: :chairs, source: :bookings # PROPRIETAIRE

  has_many :bookings # LOCATAIRE*

  validates :first_name, :last_name, presence: true
end
