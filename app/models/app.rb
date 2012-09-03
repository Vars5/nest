class App < ActiveRecord::Base
  attr_accessible :name, :email, :id, :app_id, :job_id
  
  belongs_to :job
  has_many :notes
  
  has_attached_file :resume
  has_attached_file :coverletter
  has_attached_file :transcript
  
end
