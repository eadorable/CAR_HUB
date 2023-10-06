class OrdersController < ApplicationController
  def index
    @orders = current_user.orders
  end

  def show
    # @order = Order.find(params[:id])
    @order = current_user.orders.find(params[:id])
    @car = @order.car # car associated with the order we are showing
  end

  def create
    @car = Car.find(params[:car_id])
    @car.sold = true
    @car.save
    @order = Order.new(car: @car, user: current_user)
    if @order.save!
      redirect_to order_path(@order.id)
    else
      render 'cars/show'
    end
    # Order.create(car_id: params[:car_id], user_id: current_user.id)
    # redirect_to car_path(params[:car_id])
  end
end
