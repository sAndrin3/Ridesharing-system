class WelcomeController < ApplicationController
  def index
    # Return all rides available no matter its type
    @rides = Ride.all
    @users = User.all
  end
end
