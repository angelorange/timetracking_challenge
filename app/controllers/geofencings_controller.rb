class GeofencingsController < ApplicationController
  before_action :set_geofencing, only: [:show, :edit, :update, :destroy]

  def new
    @geofencing = Geofencing.new
  end

  def create
    @geofencing = Geofencing.new(geofencings_params)
    if @geofencing.save
      flash[:success] = 'Geofencing create successfully'
      redirect_to @geofencing
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @geofencing.update(geofencings_params)
      flash[:success] = 'Geofecing update successfully'
      redirect_to geofencing_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @geofencing.destroy
    flash[:danger] = 'Deleted'
    redirect_to new_geofencing_path
  end

  private

  def geofencings_params
    params.require(:geofencing).permit(:location, :latitude, :longitude, :radius)
  end

  def set_geofencing
    @geofencing = Geofencing.find(params[:id])
  end
end
