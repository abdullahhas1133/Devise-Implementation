class AdminsController < ApplicationController

  before_action :authenticate_user!

  def authenticate_user!
    # redirect_to '/login' unless current_user
  end

end
