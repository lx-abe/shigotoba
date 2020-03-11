# frozen_string_literal: true

# 施設
class Workshop < ApplicationRecord
  belongs_to :station
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :opening_time, presence: true
  validates :price, presence: true

  enum category: { coworking_space: 0, cafe: 1, other: 2 }

  scope :search, lamda(search_params) do
    return if search_params.blank?

    station_id_is(search_params[:station_id])
      .category_is(search_params[:category])
      .wifi_is(search_params[:wifi])
  end
  scope :station_id_is, ->(station_id) { station_id.present? ? where(station_id: station_id) : all }
  scope :category_is, ->(category) { category.present? ? where(category: category) : all }
  scope :wifi_is, ->(wifi) { wifi == true ? where(wifi: true) : all }
end
