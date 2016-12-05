class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  # before_action is the new syntax for before_filter
  before_action :configure_sign_up_params, if: :devise_controller?
  before_action :configure_account_update_params, if: :devise_controller?

  def path_for(profilelink)
    current_user == current.user ? user_path(current_user.id) : image_path(image)
  end


  protected

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :contact_number, :email, :password, :password_confirmation])
    end

    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :contact_number, :email, :password, :password_confirmation, :current_password])
    end

end
