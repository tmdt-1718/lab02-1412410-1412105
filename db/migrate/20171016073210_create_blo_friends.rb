class CreateBloFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :blo_friends do |t|
      t.timestamps
    end
    rename_column :blo_friends, :id, :blofriend_id
  end
end
