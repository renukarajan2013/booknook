class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
private
def initialize_cart
    if session[:id]
      @cart = Cart.find(session[:id])
    else
      @cart = Cart.create
      session[:id] = @cart.id
    end
    @cart
  end
end
