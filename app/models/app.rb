class App < ActiveRecord::Base
  attr_accessible :name, :email, :id, :app_id, :job_id, :question1_answer, :question2_answer, :resume
  
  belongs_to :job
  has_many :notes
  
  has_attached_file :resume,
    :storage => :s3,
    :s3_credentials => {
      :bucket             => ENV['Jobpages'],
      :access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY']
    }

  
  has_attached_file :coverletter
  has_attached_file :transcript
  
end
