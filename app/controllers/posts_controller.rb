class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @user_posts = @user.posts.includes(:comments, :likes)
  end

  def show
    @post = Post.includes(:comments, :likes).find(params[:id])
    @comments = @post.comments.includes(:author)
    @author = @post.author
  end
end
