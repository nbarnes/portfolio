class StaticController < ApplicationController
  before_filter :projects_and_posts

  def tabs
  end

  def welcome
    render "tabs"
  end

  def projects
    render "tabs"
  end

  def blog
    render "tabs"
  end

  def about_me
    render "tabs"
  end

  def projects_and_posts
    @projects = policy_scope(Project)
    @posts = policy_scope(Post)
  end

end
