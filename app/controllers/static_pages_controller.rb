class StaticPagesController < ApplicationController

  def home
    #@write = Jobs.find(4).apps.find(4).notes.new
    @write = Note.new
    
  end
  
  
  
  def index
  end


end
