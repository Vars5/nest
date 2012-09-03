class StaticPagesController < ApplicationController

  def home
    #@write = Jobs.find(4).apps.find(4).notes.new
    @write = Note.new
    if user_signed_in?
      @listjobs = current_user.jobs.all
    end
  end
  
  
  
  def index
  end


end
