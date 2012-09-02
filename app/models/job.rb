class Job < ActiveRecord::Base
  attr_accessible :title, :description
  
  has_many :apps
  has_many :notes, through: :apps
    
  belongs_to :user
  

end
