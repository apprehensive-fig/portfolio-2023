class PagesController < ApplicationController
  def post
    @post = Post.find_by_title(params[:title])
  end

  def blog
    @posts = Post.where(p_type: "blog").sort
  end
end
