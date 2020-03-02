class Station < ApplicationRecord
  has_many :workshops
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :wifi, presence: true
  validates :opening_time, presence: true
  validates :price, presence: true
  validates :station_id, presence: true
end
