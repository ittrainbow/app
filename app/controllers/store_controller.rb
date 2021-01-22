class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  skip_before_action :authorize

  def counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end

  def counter_message
    session[:message] = 'Visit #'
  end

  def index    
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
      # @time = Date.today
      # @count = counter
      # @show_msg1 = counter_message if @count > 5
      # @show_msg2 = @count if @count > 5
    end
  end
end