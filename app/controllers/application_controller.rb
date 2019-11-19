class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_shop, :current_cart
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin])
  end

  def current_shop
    @shop = Shop.first
  end

  def current_cart
    if current_user.carts.nil?
      @cart = Cart.create(user_id: current_user.id)
    else
      @cart = current_user.carts.last
    end
  end
end
