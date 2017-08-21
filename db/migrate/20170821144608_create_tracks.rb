class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.integer :duration
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
