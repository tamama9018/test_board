class PostsController < ApplicationController
before_action :restruct_logout_user

  def index
    @posts = Post.all.order(created_at: :desc)
    
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content],
                     user_id: @current_user.id)
    @post.save
    redirect_to("/posts/index")
  end
end
