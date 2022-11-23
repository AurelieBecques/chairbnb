class ChairsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @chairs = Chair.all

  def show
    @chair = Chair.find(params[:id])
    @booking = Booking.new

  def new
    @chair = Chair.new
  end

  def create
    @chair = Chair.new(chair_params)
    @chair.rating = 0
    @chair.user = current_user
    @chair.save
    redirect_to chair_path(@chair)
  end

  private

  def chair_params
    params.require(:chair).permit(:name, :description, :address, :price_per_day, :photo)
  end
end
