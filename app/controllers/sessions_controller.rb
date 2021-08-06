class SessionsController < ApplicationController
  
  skip_before_action :authorized, only: [:new, :create, :welcome, :login]
  
  def new

    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])

      session[:user_id] = @user.id

      redirect_to '/messages'
  
    else

      redirect_to '/login'
      
    end

  end

  def create

  end

  def page_requires_login

  end

  def login

    @user = User.new

  end

  def welcome

    @user = current_user
    
  end

  def logout

    session[:user_id] = nil

    redirect_to '/welcome'

  end

end
