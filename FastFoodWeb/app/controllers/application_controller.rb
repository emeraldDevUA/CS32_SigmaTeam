class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_in_path_for(resource)
    if resource.is_a?(User) && request.path == "/users/sign_in"
      foods_index_path
    else
      super
    end
  end
end
