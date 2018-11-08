class Booking < ApplicationRecord
  # assosiations
  belongs_to :user
  belongs_to :space

  # validations
  validates :start_date, presence: true
  # validates :end_date, presence: true
  validates :rent, presence: true

end
