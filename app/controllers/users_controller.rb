class UsersController < ApplicationController
  
  skip_before_action :authorized, only: [:new, :create]
  
  def new

    @user = User.new

  end

  def create

    @user = User.create(params.require(:user).permit(:username, :password))

    session[:user_id] = @user.id
    
    redirect_to '/messages'

  end

  def show 

    @user = User.find(params[:id])

  end

  def update

    @user = current_user

    @user.update user_params

    @user.save

    redirect_to action: "show"

  end

  # PRIVATE!!!!

  private

  def user_params 

    params.require(:user).permit(:aboutme)

  end

end
