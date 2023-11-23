class CreateHitmanScenarios < ActiveRecord::Migration[7.1]
  def change
    create_table :hitman_scenarios do |t|
      t.references :scenario, null: false, foreign_key: true
      t.references :hitman, null: false, foreign_key: true
      t.timestamps
    end
  end
end
