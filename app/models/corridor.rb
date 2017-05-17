class Corridor < ApplicationRecord
  belongs_to :planet

  validates :address, presence: true, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
