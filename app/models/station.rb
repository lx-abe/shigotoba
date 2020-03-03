# frozen_string_literal: true

# 駅
class Station < ApplicationRecord
  has_many :workshops
  validates :name, presence: true
end
