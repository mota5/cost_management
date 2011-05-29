class CreateUserProjects < ActiveRecord::Migration
  def self.up
    create_table :user_projects do |t|
      t.integer :user_id, :null => false
      t.integer :project_id, :null => false
      t.integer :lock_version

      t.timestamps
    end
    add_index :user_projects, [:user_id, :project_id], :unique => true
    add_index :user_projects, [:project_id, :user_id], :unique => true
  end

  def self.down
    drop_table :user_projects
  end
end
