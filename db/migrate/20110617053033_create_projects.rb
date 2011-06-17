class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.integer :project_status_id
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
