class AddDataToApps < ActiveRecord::Migration
  def change
    add_column :apps, :name, :string
    add_column :apps, :email, :string
    add_column :apps, :job_id, :integer
  end
  
end
