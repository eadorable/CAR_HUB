class OrdersController < ApplicationController
  def create
    raise
    # Order.create(car_id: params[:car_id], user_id: current_user.id)
    # redirect_to car_path(params[:car_id])
  end
end
