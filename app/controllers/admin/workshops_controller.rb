# frozen_string_literal: true

module Admin
  # 施設登録（管理者用）
  class WorkshopsController < ApplicationController
    def new
      @workshop = Workshop.new
    end

    def create
      @workshop = Workshop.new(workshop_params)
      if @workshop.save
        redirect_to workshops_path
        flash[:success] = t 'admin.flash.success', workshop: @workshop.name
      else
        render 'new'
      end
    end

    private

    def workshop_params
      params.require(:workshop).permit(:name, :category, :address, :wifi,
                                       :seats_number, :opening_time, :price, :note, :station_id)
    end
  end
end
