class UpdateTestPassageCurrentQuestionIdNullable < ActiveRecord::Migration[7.1]
  def change
     change_column_null :test_passages, :current_question_id, true
  end
end
