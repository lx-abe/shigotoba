# frozen_string_literal: true

module Admin
  # 施設登録・管理（管理者用）
  class WorkshopsController < ApplicationController
    def index
      @workshops = Workshop.order(:updated_at)
    end

    def new
      @workshop = Workshop.new
    end

    def create
      @workshop = Workshop.new(workshop_params)
      if @workshop.save
        redirect_to admin_workshops_path, notice: t('action.created', model: Workshop.model_name.human, name: @workshop.name)
      else
        render 'new'
      end
    end

    def edit
      @workshop = Workshop.find(params[:id])
    end

    def update
      @workshop = Workshop.find(params[:id])
      if @workshop.update(workshop_params)
        redirect_to admin_workshops_path, notice: t('action.updated', model: Workshop.model_name.human, name: @workshop.name)
      else
        render 'edit'
      end
    end

    private

    def workshop_params
      params.require(:workshop).permit(:name, :category, :address, :wifi,
                                       :seats_number, :opening_time, :price, :note, :station_id)
    end
  end
end
