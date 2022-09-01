class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def new
    super
  end

  def create
    super
    # if @user.save
    #   flash[:success] = "Admin saved!"
    #   redirect_to :action => 'welcome'
    # else
    #   render action: :new
    # end
  end

  def update
    super
  end
  def welcome; end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :encrypted_password, :status, :experience_year])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :encrypted_password, :status, :experience_year])
  end
end
