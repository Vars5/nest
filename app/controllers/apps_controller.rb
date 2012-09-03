class AppsController < ApplicationController


def create
  @job = Job.find(params[:job_id])
  @app = @job.apps.build(params[:app])
  if @app.save
    redirect_to root_path
  else
    render 'new'
  end
end

def new
  @job = Job.find(params[:job_id])
  @app = @job.apps.build
  

end

#show page
def show
  
  @app = App.find(params[:id])  
  @note = @app.notes.build
  @feed = @app.notes.paginate(:page => params[:page], :per_page => 30)
  
 

end

#index
def index
  @job = Job.find(params[:job_id])
  #@app = @job.apps(:app => @app)

end

def edit
end

def update
end

def destroy
end





end
