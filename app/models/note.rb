class Note < ActiveRecord::Base
  attr_accessible :note, :comment, :app_id
  
  belongs_to :app

  
end
