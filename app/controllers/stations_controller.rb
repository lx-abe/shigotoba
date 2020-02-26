class StationsController < ApplicationController
  before_action :set_station, only: [:show, :edit, :update, :destroy]
  def index
    @stations = Station.all
  end

  def show
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.create(station_params)
    if @station.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @station.update(station_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @station.destroy
    redirect_to root_path
  end

  private
  def station_params
    params.require(:station).permit(:name)
  end

  def set_station
    @station = Station.find(params[:id])
  end

end
