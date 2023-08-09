class PostsController < ApplicationController

  # before_action :authenticate_user!, only: [:new]

  def new
    if user_signed_in?
      @post = Post.new
    else
      redirect_to root_path
    end
  end

  def create
    @post = Post.create!(post_params)

    redirect_to blog_path
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to "/blog/#{@post.title}"
  end

  def show
    @post = Post.find_by_title(params[:title])
  end

  def post_params
    params.require(:post).permit(:p_type, :title, :body, :meta_image)
  end
end
