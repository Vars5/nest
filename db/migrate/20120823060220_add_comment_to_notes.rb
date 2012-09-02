class AddCommentToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :comment, :text
  end
end
