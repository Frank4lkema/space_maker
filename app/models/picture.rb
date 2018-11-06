class Picture < ApplicationRecord
  belongs_to :space

  validates :url, presence: true
end
