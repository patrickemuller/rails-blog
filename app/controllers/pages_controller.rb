class PagesController < ApplicationController
  def homepage
    @posts = Post.all
  end
end
