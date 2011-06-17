class AddIndexToProjectUsers < ActiveRecord::Migration
  def self.up
    add_index :project_users, [:user_id, :project_id], :unique => true, :name => :project_users_idx1
    add_index :project_users, [:project_id, :user_id], :unique => true, :name => :project_users_idx2
  end
  
  def self.down
    remove_index :project_users, :name=>:project_users_idx1
    remove_index :project_users, :name=>:project_users_idx2
  end
end
