class PostsController < ApplicationController
before_action :restruct_logout_user

  def index
    @show_max = 15
    @posts = Post.all.order(created_at: :desc).first(@show_max)
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
