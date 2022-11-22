class ChairsController < ApplicationController
  before_action :set_chair, only: %i[new create]

  def new
    @chair = Chair.find(params[:chair_id])
    @chair = Chair.new
  end

  def create
    @chair = Chair.new(chair_params)
    @chair.save
    redirect_to chair_path(@chair)
  end

  private

  # def set_chair
  #   @chair = Chair.find(params[:chair_id])
  # end

  def chair_params
    params.require(:chair).permit(:title, :description, :address,:price_per_day, :user_id)
  end
end
