class AddIndexToBadgesTitle < ActiveRecord::Migration[7.1]
  def change
    add_index :badges, :title
  end
end
