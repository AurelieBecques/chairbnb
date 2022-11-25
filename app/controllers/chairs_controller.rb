class ChairsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @chairs = Chair.all
    @markers = @chairs.geocoded.map do |chair|
      {
        lat: chair.latitude,
        lng: chair.longitude,
        info_window: render_to_string(partial: "info_window", locals: {chair: chair}),
        image_url: helpers.asset_url("map-pin-solid.svg")
      }
    end
  end

  def show
    @chair = Chair.find(params[:id])
    @booking = Booking.new
  end

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
