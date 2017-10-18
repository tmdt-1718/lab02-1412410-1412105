class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
        t.string :user_name
        t.string :email
        t.string :password_hash
        t.string :cover
      t.timestamps
    end
    rename_column :users, :id, :user_id
  end
end
