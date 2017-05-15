class Planet < ApplicationRecord
  has_many :bookings, :through => :corridor
  has_many :corridors

  validates :name, presence: true, uniqueness: true
  validates :temperature, presence: true
  validates :environment, presence: true
  validates :sociability, presence: true

end
