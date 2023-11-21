class CreateContracts < ActiveRecord::Migration[7.1]
  def change
    create_table :contracts do |t|
      t.date :expiration_date
      t.references :scenario, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :hitman, null: false, foreign_key: true
      t.timestamps
    end
  end
end
