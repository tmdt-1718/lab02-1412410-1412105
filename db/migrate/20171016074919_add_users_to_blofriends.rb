class AddUsersToBlofriends < ActiveRecord::Migration[5.1]
  def change
    add_column :blo_friends,:user_id,:integer
    add_foreign_key :blo_friends, :users, column: :user_id, primary_key: "user_id"
    add_column :blo_friends,:blofriend,:integer
    add_foreign_key :blo_friends, :users, column: :blofriend, primary_key: "user_id"
  end
end
