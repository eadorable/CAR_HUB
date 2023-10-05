class PagesController < ApplicationController
  def home
  end

  def dashboard
    @cars = current_user.cars
    @orders = current_user.orders
  end
end
