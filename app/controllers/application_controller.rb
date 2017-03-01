class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin_required
    if !current_user.admin?
      redirect_to '/', alert: "你不是商家。"
    end
  end

    helper_method :current_cart
    helper_method :current_list

    def current_cart
      @current_cart ||= find_cart
    end

    def current_list
      @current_list ||= find_list
    end

    private

    def find_cart
      cart = Cart.find_by(id: session[:cart_id])
      if cart.blank?
        cart = Cart.create
      end
      session[:cart_id] = cart.id
      return cart
    end

    def find_list
      list = List.find_by(id: session[:list_id])
      if list.blank?
        list = List.create
      end
      session[:list_id] = list.id
      return list
    end
    
end
