class ChairsController < ApplicationController
  def show
    @chair = Chair.find(params[:id])
    @booking = Booking.new
  end
end
