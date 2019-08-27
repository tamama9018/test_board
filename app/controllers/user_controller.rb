class UserController < ApplicationController
before_action :restruct_logout_user, {only: [:logout, :edit, :edit_user]}
before_action :restruct_login_user, {only: [:login, :login_check]}

  def edit_user
      if params[:image]
         image = params[:image]
         @current_user.image_name = "#{@current_user.id}.jpg"
         @current_user.save
         File.binwrite("public/user_images/#{@current_user.image_name}", image.read)
         render("user/edit") and return
      end

      if params[:pass1] == params[:pass2]
          @current_user.name = params[:name]
          @current_user.password = params[:pass2]
          @current_user.save
          redirect_to("/posts/index")
      else
          render("user/edit")
      end
  end

  def edit
  end

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
