class AddCurrentTrackStartedAtToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :current_track_started_at, :integer
  end
end
