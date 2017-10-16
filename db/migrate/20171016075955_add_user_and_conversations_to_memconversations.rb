class AddUserAndConversationsToMemconversations < ActiveRecord::Migration[5.1]
  def change
    add_column :mem_conversations,:user_id,:integer
    add_foreign_key :mem_conversations, :users, column: :user_id, primary_key: "user_id"
    add_column :mem_conversations,:conversation_id,:integer
    add_foreign_key :mem_conversations, :conversations, column: :conversation_id, primary_key: "conversation_id"
  end
end
