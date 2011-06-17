class AddIndexToCosts < ActiveRecord::Migration
  def self.up
    add_index :costs, [:user_id, :started_at], :unique => true, :name => :cost_idx1
    add_index :costs, [:activity_id], :name => :cost_idx2
  end
  
  def self.down
    remove_index :costs, :name=>:cost_idx1
    remove_index :costs, :name=>:cost_idx2
  end
end
