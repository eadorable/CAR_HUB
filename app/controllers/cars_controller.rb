class CarsController < ApplicationController
  # Display a list of cars with optional brand filtering
  def index
    if params[:search].present?
      if !params[:search][:query].empty?
        @cars = Car.where(brand: params[:search][:query])
      else
        @cars = Car.all
      end
    else
      @cars = Car.all
    end
  end

  # Show details about a specific car
  def show
    @car = Car.find(params[:id])
  end

  # display the form to create a new car
  def new
    @car = Car.new
  end

  # Create a new car and associate it with the current user
  def create
    @car = Car.new(car_params)
    @user = User.find(2)
    @car.user = @user
    if @car.save
      redirect_to @car, notice: 'Car was successfully created.'
    else
      ## render the new car form again for correction of typos and trigger authenticity token error
      render :new, status: :unprocessable_entity
    end
  end

  private

  # Define the allowed parameters for creating a car
  def car_params
    params.require(:car).permit(:brand, :year, :model, :price, :description, photos: [])
  end
end
