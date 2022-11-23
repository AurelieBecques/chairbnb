class OwnerBookingsController < ApplicationController
  def index
    @bookings = current_user.owner_bookings
  end
end
