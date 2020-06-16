class TagsController < ApplicationController
  def index 
    @tags = Tag.all
  end 

  def new 
    @tag = Tag.new
  end 
  
  def create
    @tag = Tag.new(tag_params)
    byebug
    if @tag.save
      redirect_to tag_path(@tag)
    else 
      render :new
    end 
  end 

  def show 
    @tag = Tag.find_by(id: params[:id])
    if @tag 
      render :show
    else 
      redirect_to tags_path
    end 
  end 

  def edit
    @tag = Tag.find_by(id: params[:id])
    if @tag 
      render :edit
    else 
      redirect_to tags_path
    end 
  end 

  def update
    @tag = Tag.find_by(id: params[:id])
    if @tag 
      @tag.update(tag_params)
      redirect_to tag_path(@tag)
    else 
      redirect_to tags_path
    end 
  end

  def destroy
    @tag = Tag.find_by(id: params[:id])
    if @tag 
      @tag.destroy 
      redirect_to tags_path
    else 
      redirect_to tags_path
    end 
  end 

  private 
  # helpers 

  #whitelist/strong params 
  def tag_params
    params.require(:tag).permit(:title)
  end 

end 