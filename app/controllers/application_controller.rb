class ApplicationController < ActionController::Base
before_action :set_current_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def restruct_logout_user
    if @current_user == nil
      flash[:notice] = "ログインしてください"
      redirect_to("/user/login")
    end
  end

  def restruct_login_user
    if @current_user
      flash[:notice] = "ログイン中です"
      redirect_to("/posts/index")
    end
  end



end
