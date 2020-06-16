class PagesController < ApplicationController

  # get "/home" do 
  #   erb :"pages/home"
  # end 
  def home
    #render "page/home"
    #redirect_to 
  end 

  def about
    @about = "flatiron school stuff"
  end 

  def contact 

  end 

  def info

  end 

end 