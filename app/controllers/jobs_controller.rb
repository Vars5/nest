class JobsController < ApplicationController

before_filter :authenticate_user!


# create new job
def create
  @job = current_user.jobs.create(params[:job])
  if @job.save
    redirect_to @job
  else
    render 'new'
  end
end

def new
  @job = current_user.jobs.new

end

#show page
def show
  @job = current_user.jobs.find(params[:id])
  @app = @job.apps.all
  @question1 = Job.find(params[:id]).question1
  
  
end

#index
def index
  @job = current_user.jobs.all
end

def edit
  @job = current_user.jobs.find(params[:id])
end

def update
  @job = current_user.jobs.find(params[:id])
  if @job.update_attributes(params[:job])
    redirect_to root_path
  end
end

def destroy
end






end
