class Trip < ApplicationRecord
  has_many :locations, dependent: :destroy
  has_many :user_trips, dependent: :destroy
  has_many :users, through: :user_trips
  has_many :unavailable_dates, through: :user_trips
end
