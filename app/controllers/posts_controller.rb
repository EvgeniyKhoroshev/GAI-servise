class PostsController < ApplicationController
  def show
    @posts = Post.all.order('created_at DESC')
  end
  def new
  end
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to :posts => :show
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :author)
  end
end
