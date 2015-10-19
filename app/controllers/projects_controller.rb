class ProjectsController < ApplicationController
  include ApplicationHelper

  before_filter :filter_admin, except: [:index, :show]

  def index
    @posts = posts
    @projects = projects
  end

  def show
    @posts = posts
    @project = Project.find(params[:id])
    if !@project.published
      redirect_to root_path unless admin?
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render action: 'new'
    end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    redirect_to :admin_projects
  end

  def admin
    @projects = Project.all
  end

  def toggle_published
    project = Project.find(params[:id])
    project.published = !project.published
    project.save!
    redirect_to :admin_projects
  end

  private

    def filter_admin
      redirect_to :root unless admin?
    end

    def project_params
      params.require(:project).permit(:title, :content, :image)
    end

end
