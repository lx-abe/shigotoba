# frozen_string_literal: true

# お気に入り機能
class FavoritesController < ApplicationController
  def index
    @stations = Station.all
  end

  def create
    @favorite = Favorite.new(user_id: current_user.id, workshop_id: params[:workshop_id])
    if @favorite.save
      respond_to do |format|
        format.html { render partial: 'workshops/favorite', locals: { workshop: @favorite.workshop } }
      end
    else
      redirect_to root_path, notice: t('.error')
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, workshop_id: params[:workshop_id])
    if @favorite.destroy
      respond_to do |format|
        format.html { render partial: 'workshops/favorite', locals: { workshop: @favorite.workshop } }
      end
    else
      redirect_to root_path, notice: t('.error')
    end
  end
end
