class AddUsersToReqfriends < ActiveRecord::Migration[5.1]
  def change
    add_column :req_friends,:user_id,:integer
    add_foreign_key :req_friends, :users, column: :user_id, primary_key: "user_id"
    add_column :req_friends,:addfriend,:integer
    add_foreign_key :req_friends, :users, column: :addfriend, primary_key: "user_id"
  end
end
