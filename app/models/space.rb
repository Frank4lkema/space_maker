class Space < ApplicationRecord
  # assosiations
  belongs_to :user
  has_many :bookings

  #validations
  validates :name, presence: true
  validates :address, presence: true
  validates :capacity, presence: true
  validates :price, precence: true

end
