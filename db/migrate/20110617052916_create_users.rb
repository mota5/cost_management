class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login_code
      t.string :login_passwd
      t.string :family_name
      t.string :first_name
      t.string :family_kana_name
      t.string :first_kana_name
      t.string :email_address
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
