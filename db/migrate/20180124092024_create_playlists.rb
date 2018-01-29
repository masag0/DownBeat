class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :title, null: false
      t.text :description
      t.string :genre
      t.string :img_url
      t.integer :duration
      t.integer :user_id, null: false
      t.timestamps
    end

    add_index :playlists, :title
    add_index :playlists, :user_id
  end
end
