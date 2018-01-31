class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :link, null: false
      t.integer :duration, null: false
      t.integer :album_id
      t.string :link
      t.integer :track_num, null: false
      t.timestamps
    end

    add_index :songs, :title
    add_index :songs, :album_id
  end
end
