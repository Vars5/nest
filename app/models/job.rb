class Job < ActiveRecord::Base
  attr_accessible :title, :description, :question1, :question2
  
  has_many :apps
  has_many :notes, through: :apps
    
  belongs_to :user
  

end
