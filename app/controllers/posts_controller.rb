class PostsController < ApplicationController

  before_filter :filter_admin, except: [:index, :show]

  def index
    @posts = Post.all
    @projects = Project.all
    unless admin?
      @posts.select { |post| post.published == true }
      @projects.select { |project| project.published == true }
    end
  end

  def show
    @post = Post.find(params[:id])
    if not admin? and not @post.published
      render status: 404
    end
  end

  def new
  end

  def create
  end

  def destroy
  end

  def admin
    @posts = Post.all
  end

  def toggle_published
    post = Post.find(params[:id])
    post.published = !post.published
    post.save
    redirect_to :admin_posts
  end

  private

    def filter_admin
      # redirect_to :root unless admin?
    end

    def post_params
      params.require(:post).permit(:title, :content, :author_id)
    end

end
