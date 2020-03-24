# frozen_string_literal: true

# お気に入り登録・削除
class FavoritesController < ApplicationController
  def create
    @current_user = current_user
    @favorite_workshop = Favorite.new(user_id: @current_user.id, workshop_id: params[:format])
    if @favorite_workshop.save
      redirect_back(fallback_location: root_path)
    else
      redirect_to root_path, notice: t('.error')
    end
  end

  def destroy
    @current_user = current_user
    @favorite_workshop = Favorite.find_by(user_id: @current_user.id, workshop_id: params[:id])
    if @favorite_workshop.destroy
      redirect_back(fallback_location: root_path)
    else
      redirect_to root_path, notice: t('.error')
    end
  end
end
