class StaticController < ApplicationController
  include ApplicationHelper

  before_filter :indexes

  def welcome
  end

  def about_me
  end

  private
    def indexes
      @posts = posts
      @projects = projects
    end

end
