class PostsController < ApplicationController
  def index
    author_id = params[:user_id]
    @user = User.find(author_id)
    @posts = @user.posts
  end

  def show
    @post = Post.find(params[:id])
  end
end
