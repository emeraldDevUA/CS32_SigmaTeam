class RegistrationsController < Devise::RegistrationsController
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  prepend_before_action :require_no_authentication, only: [:new, :create]


  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :currency_preference)
  end

  def after_sign_up_path_for(resource)
    profile_path
=======
=======
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
=======
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
  protected

  def after_sign_up_path_for(resource)
    foods_index_path
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
=======
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
=======
>>>>>>> f53bf749b736d38e6649e3dac1fc0cf30cfbb74d
  end
end
