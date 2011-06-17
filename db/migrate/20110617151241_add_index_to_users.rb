class AddIndexToUsers < ActiveRecord::Migration
  def self.up
    add_index :users, [:login_code], :name=>:users_idx1
  end
  
  def self.down
    remove_index :users, :name=>:users_idx1
  end
end
