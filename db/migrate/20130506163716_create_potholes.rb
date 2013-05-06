class CreatePotholes < ActiveRecord::Migration
  def up
    create_table :potholes do |t|
      t.string :creation_date
      t.string :status
      t.string :completion_date
      t.string :request_number
      t.string :service_type
      t.string :current_activity
      t.string :recent_action
      t.string :potholes_filled
      t.string :address
      t.string :zip
      t.string :y_coord
      t.string :x_coord
      t.string :ward
      t.string :distrcit
      t.string :community
      t.string :latitude
      t.string :longitude
      t.string :location
    end
  end

  def down
    drop_table :potholes
  end
end
