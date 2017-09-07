class RidesController < ApplicationController

  def create
    ride = Ride.new(ride_params)
    if ride.save
      message = ride.take_ride
      flash[:message] = message
      redirect_to user_path(ride.user)
    else
      redirect_to root_path
    end
  end

  private

  def ride_params
    params.require(:ride).permit(:user_id, :attraction_id)
  end

end
