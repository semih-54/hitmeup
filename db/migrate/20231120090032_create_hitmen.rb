class CreateHitmen < ActiveRecord::Migration[7.1]
  def change
    create_table :hitmen do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :birth_year
      t.timestamps
    end
  end
end
