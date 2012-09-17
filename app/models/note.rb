class Note < ActiveRecord::Base
  attr_accessible :note, :comment, :app_id
  
  belongs_to :app

  validates :comment, presence: true
  validates :app_id, presence: true
  validates :user_id, presence: true
  
end
