class AddUsersToFriends < ActiveRecord::Migration[5.1]
  def change
    add_column :friends,:user_id,:integer
    add_foreign_key :friends, :users, column: :user_id, primary_key: "user_id"
    add_column :friends,:friend,:integer
    add_foreign_key :friends, :users, column: :friend, primary_key: "user_id"
  end
end
