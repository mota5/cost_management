class CreateProjectStatuses < ActiveRecord::Migration
  def self.up
    create_table :project_statuses do |t|
      t.string :name
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :project_statuses
  end
end
