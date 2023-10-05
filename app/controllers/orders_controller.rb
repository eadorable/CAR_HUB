class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def create
    @car = Car.find(params[:car_id])
    @order = Order.new(car: @car, user: current_user)
    if @order.save
      redirect_to orders_path
    else
      render 'cars/show'
    end
    # Order.create(car_id: params[:car_id], user_id: current_user.id)
    # redirect_to car_path(params[:car_id])
  end
end
