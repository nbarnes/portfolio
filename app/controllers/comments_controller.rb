class CommentsController < ApplicationController
  before_filter :load_commentable

  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  def create
    @comment = @commentable.comments.build(params[:comment])

    if @comment.save
      flash[:notice] = "Comment has been posted."
      redirect_to [@commentable]
    else
      flash[:alert] = "Save failed, comment has not been posted."
      redirect_to [@commentable]
    end

  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @commentable
    flash[:notice] = "Comment was deleted."
  end

  def load_commentable
    klass = [Post, Project].detect { |c| params["#{ c.name.underscore }_id"] }
    @commentable = klass.find(params["#{ klass.name.underscore }_id"])
  end

end