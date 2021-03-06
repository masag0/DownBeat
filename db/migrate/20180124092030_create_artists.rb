class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :genre
      t.text :description
      t.string :img_url
      t.timestamps
    end

    add_index :artists, :name
  end
end
