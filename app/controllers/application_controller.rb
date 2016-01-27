class ApplicationController < ActionController::Base
before_filter :configure_permitted_parameters, if: :devise_controller?
 protected

	def configure_permitted_parameters
	 devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, roles: [])}
	end
	#Prevent CSRF attacks by raising an exception.
	#For APIs, you may want to use :null_session instead.
	#protect_from_forgery with: :exception
	#protect_from_forgery with: :null_session
	#protect_from_forgery with: :exception
	#helper_method :current_user
	#def current_user
	#@current_user ||= User.find(session[:user_id]) if session[:user_id]
	#@current_user ||= User.find_by(id: session[:user_id])
	rescue_from CanCan::AccessDenied do |exception|
	redirect_to root_url, :alert => exception.message
 end
end

