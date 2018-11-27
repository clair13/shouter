class CreateFollowingRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :following_relationships do |t|
      t.integer :follower_id, foregn_key: true, null: false
      t.integer :followed_user_id, foregn_key: true, null: false

      t.timestamps
    end

    add_foreign_key :following_relationships, :users, column: :follower_id
    add_foreign_key :following_relationships, :users, column: :followed_user_id
  end
end
