class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
      t.string :conversation_name
      t.timestamps
    end
    rename_column :conversations, :id, :conversation_id
  end
end
