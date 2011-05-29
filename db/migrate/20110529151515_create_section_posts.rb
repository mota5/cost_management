class CreateSectionPosts < ActiveRecord::Migration
  def self.up
    create_table :section_posts do |t|
      t.integer :section_id, :null => false
      t.integer :post_id, :null => false
      t.integer :lock_version

      t.timestamps
    end
    add_index :section_posts, [:section_id, :post_id], :unique => true
    add_index :section_posts, [:post_id, :section_id], :unique => true
  end

  def self.down
    drop_table :section_posts
  end
end
