class CreateFriendAdditions < ActiveRecord::Migration[5.1]
  def change
    create_table :friend_additions do |t|
      t.integer :friend_list_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end

    add_index :friend_additions, :friend_list_id
    add_index :friend_additions, :user_id
  end
end
