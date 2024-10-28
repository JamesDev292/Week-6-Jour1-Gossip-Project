class WelcomeController < ApplicationController

  def user
    @user_name = params[:user_name]
  end
end
