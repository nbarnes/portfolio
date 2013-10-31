class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])

    if @comment.save
      flash[:notice] = "Comment has been posted."
      redirect_to [@post]
    else
      flash[:alert] = "Save failed, comment has not been posted."
      redirect_to [@post]
    end

  end

  def destroy
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment.destroy
    redirect_to @post
    flash[:notice] = "Comment was deleted."
  end

end