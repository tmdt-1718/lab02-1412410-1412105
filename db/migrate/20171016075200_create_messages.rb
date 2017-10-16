class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.timestamps
    end
    rename_column :messages, :id, :message_id
  end
end
