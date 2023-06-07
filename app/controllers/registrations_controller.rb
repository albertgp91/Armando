class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    receiving_day_path
  end
end
