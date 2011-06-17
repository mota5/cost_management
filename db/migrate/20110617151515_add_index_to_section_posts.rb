class AddIndexToSectionPosts < ActiveRecord::Migration
  def self.up
    add_index :section_posts, [:section_id, :post_id], :unique => true, :name=>:section_posts_idx1
    add_index :section_posts, [:post_id, :section_id], :unique => true, :name=>:section_posts_idx2
  end
  
  def self.down
    remove_index :section_posts, :name=>:section_posts_idx1
    remove_index :section_posts, :name=>:section_posts_idx2
  end
end
