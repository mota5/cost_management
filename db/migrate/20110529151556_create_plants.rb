class CreatePlants < ActiveRecord::Migration
  def self.up
    create_table :plants do |t|
      t.integer :project_id
      t.integer :plant_category_id
      t.integer :user_id
      t.datetime :started_at
      t.datetime :ended_at
      t.string :memo
      t.integer :lock_version

      t.timestamps
    end
    add_index :plants, [:user_id, :started_at], :unique => true
    add_index :plants, [:project_id]
  end

  def self.down
    drop_table :plants
  end
end
