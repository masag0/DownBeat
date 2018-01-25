class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|

      t.timestamps
    end
  end
end
