class StaticController < ApplicationController

  def about_me
  end

  def tabs
    @projects = policy_scope(Project)
    @posts = policy_scope(Post)
  end

end
