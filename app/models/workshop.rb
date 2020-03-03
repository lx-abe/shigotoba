# frozen_string_literal: true

# 施設
class Workshop < ApplicationRecord
  belongs_to :station
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :wifi, presence: true
  validates :opening_time, presence: true
  validates :price, presence: true
  validates :station_id, presence: true
end
