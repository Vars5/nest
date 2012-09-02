class AddIndexToApps < ActiveRecord::Migration
  def change
  end
  add_index :apps, [:job_id]
end
