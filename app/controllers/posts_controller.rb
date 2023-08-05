class PostsController < ApplicationController

  # before_action :authenticate_user!, only: [:new]

  def new
    if user_signed_in?
      @post = Post.new
    else
      redirect_to root_url
    end
  end

  def create
    @post = Post.create!(post_params)

    redirect_to root_url
  end

  def edit
    @post = Post.find_by_id(params[:id])
  end
  
  def update
    @post = Post.update(post_params)

    redirect_to root_url
  end

  def show
    @post = Post.find_by_title(params[:title])
  end

  def post_params
    params.require(:post).permit(:p_type, :title, :body, :meta_image)
  end
end
