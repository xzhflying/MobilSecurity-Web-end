class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  require 'rqrcode_png'

  protect_from_forgery with: :exception

  def first_use?
    return if current_user.nil?
    unbind_devise_number = 0
    user = current_user
    unbind_devise_number += 1 if user.nfcs.count == 0
    unbind_devise_number += 1 if user.mobilephones.count == 0
    unbind_devise_number += 1 if user.certificates.count == 0
    if unbind_devise_number >= 2
      true
    else
      false
    end
  end
end
