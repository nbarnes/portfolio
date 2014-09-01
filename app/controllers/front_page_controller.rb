class FrontPageController < ApplicationController
  before_filter :projects_and_posts

  def tabs
  end

  def welcome
    render "tabbed_view"
  end

  def projects
    render "tabbed_view"
  end

  def blog
    render "tabbed_view"
  end

  def about_me
    render "tabbed_view"
  end

  def projects_and_posts
    @projects = policy_scope(Project)
    @posts = policy_scope(Post)
  end

end
