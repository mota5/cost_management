class AddIndexToUserSectionPosts < ActiveRecord::Migration
  def self.up
    add_index :user_section_posts, [:user_id, :section_post_id], :unique => true, :name => :user_section_posts_idx1
  end
  
  def self.down
    remove_index :user_section_posts, :name=>:user_section_posts_idx1
  end
end
