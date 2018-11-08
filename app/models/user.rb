class User < ApplicationRecord
  # assosiations
  has_many :spaces
  has_many :bookings
  mount_uploader :avatar, PhotoUploader
  # validations
  # validates :name, presence: true
  # validates :phone_number, presence: true
  # validates :avatar, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
