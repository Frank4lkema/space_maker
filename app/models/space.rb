class Space < ApplicationRecord
  # assosiations
  belongs_to :user
  has_many :bookings
  has_many :pictures

  #validations
  validates :name, presence: true
  validates :address, presence: true
  validates :capacity, presence: true
  validates :price, presence: true

end
