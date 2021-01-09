class AdminController < ApplicationController
  before_action :set_cart2_show
  
  def index
    @total_orders = Order.count
  end
end
