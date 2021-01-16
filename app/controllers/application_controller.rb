class ApplicationController < ActionController::Base
    before_action :checkoutbutton
    before_action :authorize

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

    protected

    def authorize
        unless User.find_by(id: session[:user_id])
            redirect_to login_url, notice: "Please log in"
            
        end
    end

    def set_i18n_locale_from_params
        if params[:locale]
            if I18n.available_locales.map(&:to_s).include?(params[:locale])
                I18n.locale = params[:locale]
            else
                flash.now[:notice] = "#{params[:locale]} translation not available"
                logger.error flash.now[:notice]
            end
        end
    end
end