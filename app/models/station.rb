class Station < ApplicationRecord
  has_many :workshops
  validates :name, presence: true
end
