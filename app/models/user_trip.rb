class UserTrip < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_many :unavailable_dates, dependent: :destroy
end
