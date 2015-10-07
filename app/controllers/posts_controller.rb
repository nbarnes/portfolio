class PostsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all
    if admin?
      @posts.select { |post| post.published == true }
    end
  end

  def show
  end

  def new
    render 404 unless admin?
  end

  def create
    render 404 unless admin?
  end

  def destroy
    render 404 unless admin?
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :author_id)
    end

end
