class BookingsController < ApplicationController
  before_action :set_chair, only: %i[create]

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @booking.user = current_user
    @booking.chair = @chair

    if @booking.valid?
      @booking.total_price = @chair.price_per_day * (@booking.end_time - @booking.start_time).to_i
      @booking.save
      redirect_to bookings_path, notice: "You have booked this chair! Waiting for owner's approval..." # renvoi vers les résas du locataire
    else
      render "chairs/show", status: :unprocessable_entity
    end

  end

  private

  def set_chair
    @chair = Chair.find(params[:chair_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
