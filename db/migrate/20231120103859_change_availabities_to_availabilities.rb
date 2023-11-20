class ChangeAvailabitiesToAvailabilities < ActiveRecord::Migration[7.1]
  def change
    rename_table :availabities, :availabilities
  end
end
