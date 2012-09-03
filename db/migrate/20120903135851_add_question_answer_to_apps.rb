class AddQuestionAnswerToApps < ActiveRecord::Migration
  def change
    add_column :apps, :question1_answer, :string
    add_column :apps, :question2_answer, :string
  end
end
