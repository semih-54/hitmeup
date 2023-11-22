class AddColumnsToContract < ActiveRecord::Migration[7.1]
  def change
    add_column :contracts, :victim_name, :string
    add_column :contracts, :victim_age, :integer
    add_column :contracts, :victim_location, :text
    add_column :contracts, :victim_description, :text
    add_column :contracts, :budget, :text
    add_column :contracts, :status, :string
  end
end
