class Workshop < ApplicationRecord
  belongs_to :station
  validates :name, presence: true

end
