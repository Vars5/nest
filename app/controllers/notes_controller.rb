class NotesController < ApplicationController
  
  def create
    #@something = params(:id)
    #@app = App.create(params[:app])
    #@app.app_id = params[:app][:id]
    
    #@app = params[:id]
    #@note = @app.notes.build(params[:note])  
    #@app= App.find(params[:id])    
        
    @app = App.find(params[:note][:app_id])
    @note = @app.notes.build(params[:note])
    @note.user_id = current_user.id
    @note.note = "remove column"
    if @note.save
        render 'new'
      else
        render 'new'
    end
      

  end  
  
  
  
    #render root_path
   # if @note.save
      
    #else
      
    #end
   
   #@note = @current_app.notes.create[:note]
  
  
  def new

   @note = @app.notes.new

    
    if @note.save
      redirect_to 'job_app'
    else
      redirect_to 'job_app'
    end

  end
  
  def show
  @note = Note.find(params[:id])
    
  end
  
  
  def update
  end
  
end
