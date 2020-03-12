class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :full_name, :mobile_number, :bio, :address, :photo])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :mobile_number, :bio, :photo, :address])
  end
end

def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
