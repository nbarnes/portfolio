class StaticController < ApplicationController

  before_filter :indexes

  def welcome
  end

  def about_me
  end

  private
    def indexes
      @posts = Post.all
      @projects = Project.all
      unless admin?
        @posts.select { |post| post.published == true }
        @projects.select { |project| project.published == true }
      end
    end

end
