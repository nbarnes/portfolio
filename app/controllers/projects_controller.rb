class ProjectsController < ApplicationController

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
    @project = Project.find(params[:id])
    if not admin? and not @project.published
      render 404
    end
  end

  def new
  end

  def create
  end

  def destroy
  end

  def admin
    @projects = Project.all
  end

  def toggle_published
    if admin?
      project = Project.find(params[:id])
      @project.update_attributes(published: !@project.published)
      redirect_to :admin_posts
    else
      render 404
    end
  end

  private

    def filter_admin
      # redirect_to :root unless admin?
    end

    def project_params
      params.require(:project).permit(:title, :content, :author_id, :image)
    end

end
