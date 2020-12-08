class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = Date.today
  end
end
