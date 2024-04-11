class CreateTestPassages < ActiveRecord::Migration[7.1]
  def change
    create_table :test_passages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :test, null: false, foreign_key: true
      t.references :current_question, null: false, foreign_key: false
      t.integer :correct_question, default: 0

      t.timestamps
    end
  end
end
