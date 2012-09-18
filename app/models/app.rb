class App < ActiveRecord::Base
  attr_accessible :name, :email, :id, :app_id, :job_id, :question1_answer, :question2_answer, :resume
  
  belongs_to :job
  has_many :notes
  
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false}
  
  
  has_attached_file :resume,
    :storage        => :s3,
    :bucket         => ENV['S3_BUCKET_NAME'],
    :s3_credentials => { :access_key_id      => ENV['S3_ACCESS_KEY'],
                         :secret_access_key  => ENV['S3_SECRET_KEY'] }


  
  has_attached_file :coverletter
  has_attached_file :transcript
  
end
