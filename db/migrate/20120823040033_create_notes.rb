class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :note
      t.integer :app_id
      t.integer :user_id

      t.timestamps
    end

  end
end
