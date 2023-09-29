class CarsController < ApplicationController
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

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

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

  private

  def car_params
    params.require(:car).permit(:brand, :year, :model, :price, :description, photos: [])
  end
end
