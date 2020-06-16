class PostsController < ApplicationController
  def index 
    byebug
    @posts = Post.all
  end 

  def new 
    @post = Post.new
  end 
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post)
    else 
      render :new
    end 
  end 

  def show 
    @post = Post.find_by(id: params[:id])
    if @post 
      render :show
    else 
      redirect_to posts_path
    end 
  end 

  def edit
    @post = Post.find_by(id: params[:id])
    if @post 
      render :edit
    else 
      redirect_to posts_path
    end 
  end 

  def update
    @post = Post.find_by(id: params[:id])
    if @post 
      @post.update(post_params)
      redirect_to post_path(@post)
    else 
      redirect_to posts_path
    end 
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    if @post 
      @post.destroy 
      redirect_to posts_path
    else 
      redirect_to posts_path
    end 
  end 

  private 
  # helpers 

  #whitelist/strong params 
  def post_params
    params.require(:post).permit(:title, :content, :tag_id)
  end 

end 