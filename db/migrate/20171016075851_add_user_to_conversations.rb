class AddUserToConversations < ActiveRecord::Migration[5.1]
  def change
    add_column :conversations,:user_id,:integer
    add_foreign_key :conversations, :users, column: :user_id, primary_key: "user_id"
  end
end
