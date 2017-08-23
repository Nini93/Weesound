class RenameColumnToRooms < ActiveRecord::Migration[5.0]
  def change
    rename_column :rooms, :current_track_started_at, :current_track_time
  end
end
