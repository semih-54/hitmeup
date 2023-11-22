class AddIsHitmanToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :is_hitman, :boolean, default: false
  end
end
