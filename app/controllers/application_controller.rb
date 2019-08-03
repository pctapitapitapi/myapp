class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller? #追加のパラメーターを許可

  # protected

  # def configure_permitted_parameters #追加のパラメーターを許可
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end
end
