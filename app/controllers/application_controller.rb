class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && request.path == "/users/sign_in"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      profile_path
=======
      foods_index_path
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
=======
      foods_index_path
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
=======
      foods_index_path
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
    else
      super
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:preferred_currency])
  end
end
