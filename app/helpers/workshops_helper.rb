# frozen_string_literal: true

# Workshopsのヘルパー
module WorkshopsHelper
  def logged_in?(user)
    !user.nil?
  end
end
