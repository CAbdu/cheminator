class Corridor < ApplicationRecord
  belongs_to :planet

  validates :address, presence: true, uniqueness: true
end
