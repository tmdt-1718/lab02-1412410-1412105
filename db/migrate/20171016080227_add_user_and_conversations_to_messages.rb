class AddUserAndConversationsToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages,:user_id,:integer
    add_foreign_key :messages, :users, column: :user_id, primary_key: "user_id"
    add_column :messages,:conversation_id,:integer
    add_foreign_key :messages, :conversations, column: :conversation_id, primary_key: "conversation_id"
  end
end
