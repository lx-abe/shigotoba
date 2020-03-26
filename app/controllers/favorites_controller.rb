# frozen_string_literal: true

# お気に入り機能
class FavoritesController < ApplicationController
  def index
    @stations = Station.all
  end

  def create
    @favorite_workshop = Favorite.new(user_id: current_user.id, workshop_id: params[:workshop_id])
    if @favorite_workshop.save
      respond_to do |format|
        format.html { render partial: 'workshops/favorite_created', locals: { workshop: params[:workshop_id] } }
      end
    else
      redirect_to root_path, notice: t('.error')
    end
  end

  def destroy
    @favorite_workshop = Favorite.find_by(user_id: current_user.id, workshop_id: params[:workshop_id])
    if @favorite_workshop.destroy
      respond_to do |format|
        format.html { render partial: 'workshops/favorite_before_create', locals: { workshop: params[:workshop_id] } }
      end
    else
      redirect_to root_path, notice: t('.error')
    end
  end
end
