class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)

    redirect_to root_url
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def post_params
    params.require(:post).permit(:p_type, :title, :body, :meta_image)
  end
end
