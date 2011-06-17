class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.integer :project_id
      t.string :name
      t.integer :sort_no
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
