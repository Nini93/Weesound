class ModifyCurrentTrackInRooms < ActiveRecord::Migration[5.0]
  def change
    change_column :rooms, :current_track, :text
  end
end
