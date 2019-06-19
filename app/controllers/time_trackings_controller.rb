class TimeTrackingsController < ApplicationController
  before_action :set_time_tracking, only: [:show]
  def index
    @time_trackings = TimeTracking.all
  end

  def show; end

  def new
    @time_tracking = TimeTracking.new
  end

  def create
    @time_tracking = TimeTracking.new(time_tracking_params)
    if @time_tracking.save
      flash[:success] = 'Check in create successfully'
      redirect_to @time_tracking
    else
      render :new
    end
  end

  private

  def time_tracking_params
    params.require(:time_tracking).permit(:owner, :comment, :geofencing_id)
  end

  def set_time_tracking
    @time_tracking = TimeTracking.find(params[:id])
  end
end
