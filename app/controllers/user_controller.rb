class UserController < ApplicationController
before_action :restruct_logout_user, {only: [:logout]}
before_action :restruct_login_user, {only: [:login, :login_check]}

  def logout
    session[:user_id] = nil
    redirect_to("/user/login")
  end

  def login_check
    @user = User.find_by(name: params[:name])
    if @user && @user.authenticate(params[:pass])
      session[:user_id] = @user.id
      redirect_to("/posts/index")
    else
      render("user/login")
    end
  end

  def login
  end


end
