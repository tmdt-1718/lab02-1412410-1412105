class CreateMemConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :mem_conversations do |t|

      t.timestamps
    end
    rename_column :mem_conversations, :id, :mem_conversation_id
  end
end
