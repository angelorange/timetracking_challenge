class GeofencingsController < ApplicationController
  def new
    @geofencing = Geofencing.new
  end

  def create
    @geofencing = Geofencing.new(geofencings_params)
    if @geofencing.save
      flash[:success] =  'Geofencing create successfully'
      redirect_to @geofencing
    else
      render :new
    end
  end

  def show
    @geofencing = Geofencing.find(params[:id])
  end

  private

  def geofencings_params
    params.require(:geofencing).permit(:location, :latitude, :longitude, :radius)
  end
end
