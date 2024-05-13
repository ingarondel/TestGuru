class AddSuccessPassedToTestPassages < ActiveRecord::Migration[7.1]
  def change
    add_column :test_passages, :success_passed, :boolean
  end
end
