class App < ActiveRecord::Base
  attr_accessible :name, :email, :id, :app_id, :job_id
  
  belongs_to :job
  has_many :notes
  
end
