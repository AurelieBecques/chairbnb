class OwnerBookingsController < ApplicationController
  def index
    @bookings = current_user.owner_bookings.order(created_at: :desc)
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "validated"
    @booking.save

    redirect_to owner_bookings_path(current_user)
  end

  def deny
    @booking = Booking.find(params[:id])
    @booking.status = "denied"
    @booking.save

    redirect_to owner_bookings_path(current_user)
  end
end
