class PostsController < ApplicationController
  def show
    @posts = Post.all.order('created_at DESC')
  end
  def new
  end
  def create
    @post = Post.new(post_params)
    @post.approoved = "Этот запрос пока не обработан администратором."
    @post.save
    redirect_to :posts => :show
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
  #  if @post.update permitted_params
  end
  private
  def post_params
    params.require(:post).permit(:title, :body, :author, :approoved)
  end
end
