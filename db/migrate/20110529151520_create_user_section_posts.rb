class CreateUserSectionPosts < ActiveRecord::Migration
  def self.up
    create_table :user_section_posts do |t|
      t.integer :user_id, :null => false
      t.integer :section_id, :null => false
      t.integer :post_id
      t.integer :lock_version

      t.timestamps
    end
    add_index :user_section_posts, [:user_id, :section_id, :post_id], :unique => true
    add_index :user_section_posts, [:section_id]
    add_index :user_section_posts, [:post_id]
  end

  def self.down
    drop_table :user_section_posts
  end
end
