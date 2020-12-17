class ApplicationController < ActionController::Base
    before_action :set_cart

    # при наличии условий only корзина пропадает из нав-бара почти везде
    # before_action :set_cart, only: [:show, :edit, :update, :destroy]
    private

    def current_cart
        @current_cart = session[:cart_id] ? Cart.find(session[:cart_id]) : Cart.create
        session[:cart_id] = @current_cart.id if @current_cart.new_record?
    end

    def set_cart
        @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id
    end
end