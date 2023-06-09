class PagesController < ApplicationController
  def home
    
  end

  def gallery
    @posts = Post.where(p_type: "photo")
  end

  def projects
    @posts = Post.where(p_type: "project")
  end
end
