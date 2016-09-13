class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end
  def show
    @post = Post.find(params[:id])
  end
  def new
  end
  def approoved_posts
    @posts = Post.all
  end
  def create
    @post = Post.new(post_params)
    @post.approoved = "Этот запрос пока не обработан администратором."
    @post.save
    redirect_to @post
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    if @post.update post_params
      redirect_to @post, :notice => "Запрос обработан."
    else
      redirect_to @posts
    end
  end
  private
  def post_params
    params.require(:post).permit(:title, :body, :author, :approoved)
  end
end
