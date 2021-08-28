class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :nombre, :email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :nombre, :password, :password_confirmation, :current_password, :avatar) }
  end

    before_action :validar_session
 # after_action :after_action

 def validar_session
   @URL_DOMAIN = "http://localhost:3000" #Rails.application.config.url_domain
   @VRS_ASSETS =  Rails.application.config.assets.version

   modelo = (params[:modelo].nil?)? nil : params[:modelo]
   controlador = params[:controller]
   accion = params[:action]

   logger.debug params

 end

 def after_action
   Rails.application.reload_routes!
 end

end
