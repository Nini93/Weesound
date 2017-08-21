class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :description
      t.string :custom_message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
