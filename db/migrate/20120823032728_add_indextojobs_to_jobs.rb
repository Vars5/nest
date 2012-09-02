class AddIndextojobsToJobs < ActiveRecord::Migration
  def change
  end
    add_index :jobs, [:user_id]
end
