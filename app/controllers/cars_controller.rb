class CarsController < ApplicationController
  before_action :set_person
  before_action :set_car

  def index
    render json: @person.cars
  end

  def show
    render json: @car
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_car
    @car = @person.cars.find_by(id: params[:id])
  end
end
