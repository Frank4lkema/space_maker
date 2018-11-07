class Space < ApplicationRecord
  # assosiations
  belongs_to :user
  has_many :bookings
  has_many :pictures, dependent: :destroy

  #validations
  validates :name, presence: true
  validates :address, presence: true
  validates :capacity, presence: true
  validates :price, presence: true

  # allows use to create a space including with pictures as a parent to child see link for more info
  # https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html
  accepts_nested_attributes_for :pictures


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end


