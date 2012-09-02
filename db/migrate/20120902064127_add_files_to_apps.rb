class AddFilesToApps < ActiveRecord::Migration
  def self.up
    add_attachment :apps, :coverletter
    add_attachment :apps, :resume
    add_attachment :apps, :transcript

  end
  
  def self.down
    remove.attachment :apps, :coverletter
    remove.attachment :apps, :resume
    remove.attachment :apps, :transcript

  end
end
