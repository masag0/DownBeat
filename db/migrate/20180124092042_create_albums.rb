class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.text :description
      t.string :genre
      t.integer :year, null: false
      t.integer :artist_id, null: false
      t.string :img_url
      t.timestamps
    end

    add_index :albums, :artist_id
    add_index :albums, :title
  end
end
