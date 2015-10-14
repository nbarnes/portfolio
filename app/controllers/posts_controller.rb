class PostsController < ApplicationController
  include ApplicationHelper

  before_filter :filter_admin, except: [:index, :show]

  def index
    @posts = posts
    @projects = projects
  end

  def show
    @post = Post.find(params[:id])
    @projects = projects
    if not admin? and not @post.published
      render status: 404
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author_id = current_user.id
    binding.pry
    if @post.save
      redirect_to @post
    else
      render action: 'new'
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to :admin_posts
  end

  def admin
    @posts = Post.all
  end

  def toggle_published
    post = Post.find(params[:id])
    post.published = !post.published
    post.save!
    redirect_to :admin_posts
  end

  private

    def filter_admin
      redirect_to :root unless admin?
    end

    def post_params
      params.require(:post).permit(:title, :content)
    end

end
