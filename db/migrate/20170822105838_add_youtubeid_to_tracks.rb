class AddYoutubeidToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :youtubeid, :string
  end
end
