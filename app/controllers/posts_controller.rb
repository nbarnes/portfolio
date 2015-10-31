class PostsController < ApplicationController
  include ApplicationHelper

  before_filter :filter_admin, except: [:index, :show]

  def index
    @posts = posts
    @projects = projects
  end

  def show
    @post = Post.find(params[:id])
    redirect_to root_path unless @post.published || admin?
    @projects = projects
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = "Profile updated"
      redirect_to @post
    else
      render edit
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author_id = current_user.id
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
