class AddHitmanReferenceToContracts < ActiveRecord::Migration[7.1]
  def change
    add_reference :contracts, :hitman, null: false, foreign_key: true
  end
end
