class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  # Display a list of cars with optional brand filtering
  def index
    @cars = Car.available
    if params[:search].present? && params[:search][:query] != ''
      @cars = Car.available.global_search(params[:search][:query])
    end
  end

  # Show details about a specific car
  def show
    @car = Car.find(params[:id])
    @order = Order.new

    # Fetch additional cars for display. It will only display 3 cars
    # @cars = Car.where.not(id: @car.id).limit(3)
    @cars = Car.available.where.not(id: @car.id).limit(3)
  end

  # display the form to create a new car
  def new
    @car = Car.new
  end

  # Create a new car and associate it with the current user
  def create
    @car = Car.new(car_params)
    @user = User.find(current_user.id)
    @car.user_id = @user.id
    if @car.save
      redirect_to @car, notice: 'Car was successfully created.'
    else
      ## render the new car form again for correction of typos and trigger authenticity token error
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id]) # find the car to update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to root_path
  end

  private

  # Define the allowed parameters for creating a car
  def car_params
    params.require(:car).permit(:brand, :year, :model, :price_cents, :description, photos: [])
  end
end
