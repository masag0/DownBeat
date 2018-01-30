class Api::SessionsController < ApplicationController
  def create
    @user = User.find_user_by_credentials(
      params[:username],
      params[:password]
    )
    if @user
      login(@user)
      render :show
    else
      render json: ["Invalid username or password"], status: 401
    end
  end

  def destroy
    if logged_in?
      logout
      render json: {}
    else
      render json: ["Not logged in"], status: 404
    end
  end
end
