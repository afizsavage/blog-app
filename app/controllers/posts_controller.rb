class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @user_posts = @user.posts.includes(:comments, :likes)
  end

  def show; end
end
