class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :planet

  validates :rating, presence: true
  validates :review, presence: true
end
