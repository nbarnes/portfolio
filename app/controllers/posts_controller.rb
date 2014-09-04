class PostsController < ApplicationController

  # restricts index, create, update, edit, and destroy to signed in users
  before_filter :authenticate_user!, except: [:show, :display]

  # GET /posts
  # GET /posts.json
  def index
    @posts = policy_scope(Post)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def admin
    @posts = policy_scope(Post)
  end

  def display
    @posts = policy_scope(Post)

    respond_to do |format|
      format.html # display.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @projects = policy_scope(Project)
    begin
      @post = Post.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      @post = nil
    end


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
    authorize @post
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
    authorize @post

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])
    authorize @post

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
        current_user.posts << @post
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
    authorize @post

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    authorize @post
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  def toggle_published
    @post = Post.find(params[:id])
    authorize @post

    @post.update_attributes(published: !@post.published)

    redirect_to posts_admin_path
  end

end
