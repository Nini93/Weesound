class AddSlugToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :slug, :string

    Room.find_each do |room|
      room.slug = room.title.parameterize
      room.save
    end
  end
end
