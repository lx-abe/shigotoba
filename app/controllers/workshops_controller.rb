# frozen_string_literal: true

# 施設閲覧（ユーザー向け）
class WorkshopsController < ApplicationController
  def index
    @search_params = workshop_search_params
    @workshops = search(workshop_search_params)
  end

  def show
    @workshop = Workshop.find(params[:id])
  end

  private

  def search(search_params)
    workshops = Workshop.all
    workshops_searched_by_station_id = search_by_station_id(workshops, search_params[:station_id])
    workshops_searched_by_category = search_by_category(workshops_searched_by_station_id, search_params[:category])
    search_by_wifi(workshops_searched_by_category, search_params[:wifi])
  end

  def search_by_station_id(workshops, station_id)
    if station_id.present?
      workshops.where(station_id: station_id)
    else
      workshops
    end
  end

  def search_by_category(workshops, category)
    if category.present?
      workshops.where(category: category)
    else
      workshops
    end
  end

  def search_by_wifi(workshops, wifi)
    if wifi
      workshops.where(wifi: wifi)
    else
      workshops
    end
  end

  def workshop_search_params
    params.fetch(:search, {}).permit(:station_id, :category, :wifi)
  end
end
