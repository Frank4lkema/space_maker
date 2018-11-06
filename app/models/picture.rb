class Picture < ApplicationRecord
  belongs_to :space
  mount_uploader :photo, PhotoUploader
end
