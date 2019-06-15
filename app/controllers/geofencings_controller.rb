class GeofencingsController < ApplicationController
  def new
    @geofencing = Geofencing.new
  end

  def create
    @geofencing = Geofencing.new(geofencings_params)
    @geofencing.save
    redirect_to @geofencing
  end

  def show
    @geofencing = Geofencing.find(params[:id])
  end

  private

  def geofencings_params
    params.require(:geofencing).permit(:location, :latitude, :longitude, :radius)
  end
end
