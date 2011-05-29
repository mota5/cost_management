class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login_code, :null => false
      t.string :login_passwd, :null => false
      t.string :family_name, :null => false
      t.string :first_name, :null => false
      t.string :family_kana_name
      t.string :first_kana_name
      t.string :email_address
      t.integer :superior_user_id
      t.integer :lock_version

      t.timestamps
    end
    add_index :users, [:login_code]
  end

  def self.down
    drop_table :users
  end
end
