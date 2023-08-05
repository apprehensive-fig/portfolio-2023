class PagesController < ApplicationController
  def asmr
    @posts = Post.where(p_type: "asmr").order('title')
  end

  def post
    @post = Post.find_by_title(params[:title])
  end

  def bio
    @posts = Post.where(p_type: "bio")
  end

  def blog
    @posts = Post.where(p_type: "photo")
  end

  def projects
    @posts = Post.where(p_type: "project")
  end

end
