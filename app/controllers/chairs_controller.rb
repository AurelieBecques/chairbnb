class ChairsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @chairs = Chair.all
  end
end
