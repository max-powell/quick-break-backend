class User < ApplicationRecord
  validates :name, uniqueness: true

  has_many :user_trips, dependent: :destroy
  has_many :trips, through: :user_trips
end
