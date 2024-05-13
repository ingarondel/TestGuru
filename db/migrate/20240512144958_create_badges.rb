class CreateBadges < ActiveRecord::Migration[7.1]
  def change
    create_table :badges do |t|
      t.string "title", null: false
      t.string "img"

      t.timestamps
    end
  end
end
