class CreateCosts < ActiveRecord::Migration
  def self.up
    create_table :costs do |t|
      t.integer :activity_id
      t.integer :user_id
      t.datetime :started_at
      t.datetime :ended_at
      t.string :memo
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :costs
  end
end
