# frozen_string_literal: true

# お気に入り
class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :workshop
end
