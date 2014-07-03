class Admin::PostsController < ApplicationController
  before_filter :authorize_user!
  before_filter :load_post, :only => [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.last
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      flash[:notice] = "Post was successfully saved."
      redirect_to admin_post_path(@post)
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @post.update_attributes(params[:post])
      redirect_to admin_post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_posts_path
  end

  private
  def load_post
    @post = Post.find(params[:id])
  end
end
