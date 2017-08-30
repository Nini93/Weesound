class AddCurrenTrackTitleToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :current_track_title, :string
  end
end
