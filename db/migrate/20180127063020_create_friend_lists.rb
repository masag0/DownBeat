class CreateFriendLists < ActiveRecord::Migration[5.1]
  def change
    create_table :friend_lists do |t|
      t.integer :owner_id, null: false

      t.timestamps
    end

    add_index :friend_lists, :owner_id
  end
end
