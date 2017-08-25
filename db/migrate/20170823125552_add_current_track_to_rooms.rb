class AddCurrentTrackToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :current_track, :integer
  end
end
