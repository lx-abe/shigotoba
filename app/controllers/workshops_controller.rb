# frozen_string_literal: true

# 施設閲覧（ユーザー向け）
class WorkshopsController < ApplicationController
  def index
    @search_params = workshop_search_params
    @workshops = search(workshop_search_params)
    @stations = Station.all
    @current_user = User.find(session[:user_id])
    @favorite_workshops = Favorite.where(user_id: @current_user.id)
    @favorite_workshops_ids = Favorite.where(user_id: @current_user.id).map(&:workshop_id)
  end

  def show
    @search_params = workshop_search_params
    @workshops = search(workshop_search_params)
    @stations = Station.all
    @workshop = Workshop.find(params[:id])
    @current_user = User.find(session[:user_id])
    @favorite_workshops = Favorite.where(user_id: @current_user.id)
    @favorite_workshops_ids = Favorite.where(user_id: @current_user.id).map(&:workshop_id)
  end

  private

  def search(search_params)
    workshops = Workshop.all
    workshops_searched_by_station_id = search_by_station_id(workshops, search_params[:station_id])
    workshops_searched_by_category = search_by_category(workshops_searched_by_station_id, search_params[:category])
    search_by_wifi(workshops_searched_by_category, search_params[:wifi])
  end

  def search_by_station_id(workshops, station_id)
    station_id.present? ? workshops.where(station_id: station_id) : workshops
  end

  def search_by_category(workshops, category)
    category.present? ? workshops.where(category: category) : workshops
  end

  def search_by_wifi(workshops, wifi)
    wifi ? workshops.where(wifi: wifi) : workshops
  end

  def workshop_search_params
    params.fetch(:search, {}).permit(:station_id, :category, :wifi)
  end
end
