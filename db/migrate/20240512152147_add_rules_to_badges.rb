class AddRulesToBadges < ActiveRecord::Migration[7.1]
  def change
    add_column :badges, :rule, :string, null:false
  end
end
