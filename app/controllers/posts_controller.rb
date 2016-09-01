class PostsController < ApplicationController
  def show
    @posts = Post.all
  end
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :author)
  end
end
