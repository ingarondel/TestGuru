class AddTimeToTests < ActiveRecord::Migration[7.1]
  def change
    add_column :tests, :time, :integer
  end
end
