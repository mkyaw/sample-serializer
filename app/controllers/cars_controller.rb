class CarsController < ApplicationController
  def index
    render json: Car.all
  end

  def show
    render json: Car.find(id: params[:id])
  end
end
