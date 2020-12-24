class ApplicationController < ActionController::Base
    before_action :checkoutbutton

    def checkoutbutton
      @showbutton = 1
    end
     
    private

    def current_cart
        @current_cart = session[:cart_id] ? Cart.find(session[:cart_id]) : Cart.create
        session[:cart_id] = @current_cart.id if @current_cart.new_record?
    end

    def set_cart
        # @cart = Cart.find(params[:id])
        @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id
    end

    def set_cart2_show
        @cart = Cart.find(session[:cart_id])
    rescue
    end
end