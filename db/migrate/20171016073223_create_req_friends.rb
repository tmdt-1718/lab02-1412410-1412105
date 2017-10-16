class CreateReqFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :req_friends do |t|

      t.timestamps
    end
    rename_column :req_friends, :id, :reqfriend_id
  end
end
