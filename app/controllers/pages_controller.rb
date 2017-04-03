class PagesController < ApplicationController
  def homepage
    @posts = Post.all.order(created_at: :desc).page(params[:page]).per(12)
  end
end
