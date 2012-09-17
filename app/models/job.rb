class Job < ActiveRecord::Base
  attr_accessible :title, :description, :question1, :question2
  
  has_many :apps
  has_many :notes, through: :apps
    
  belongs_to :user
  
  validates :title, presence: true
  validates :description, presence: true
  validates :question1, presence: true
  validates :question2, presence:true 
  
  

end
