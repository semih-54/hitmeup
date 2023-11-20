class CreateVictims < ActiveRecord::Migration[7.1]
  def change
    create_table :victims do |t|
      t.string :name
      t.integer :age
      t.text :description

      t.timestamps
    end
  end
end
