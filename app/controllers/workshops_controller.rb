# frozen_string_literal: true

# 施設閲覧（ユーザー向け）
class WorkshopsController < ApplicationController
  def index
    @search_params = workshop_search_params
    @workshops = Workshop.search(@search_params)
    # binding.pry
  end

  def show
    @workshop = Workshop.find(params[:id])
  end

  private

  def workshop_search_params
    params.fetch(:search, {}).permit(:station_id, :category, :wifi)
  end
end
