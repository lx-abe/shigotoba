# frozen_string_literal: true

# 施設
class Workshop < ApplicationRecord
  belongs_to :station
  has_many :users, through :favorites
  has_many :favorites
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :opening_time, presence: true
  validates :price, presence: true

  enum category: { coworking_space: 0, cafe: 1, other: 2 }
end
