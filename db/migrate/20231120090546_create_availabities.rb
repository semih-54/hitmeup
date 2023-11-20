class CreateAvailabities < ActiveRecord::Migration[7.1]
  def change
    create_table :availabities do |t|
      t.date :start_date
      t.date :end_date
      t.references :hitman, null: false, foreign_key: true

      t.timestamps
    end
  end
end
