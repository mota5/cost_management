class CreateUserSectionPosts < ActiveRecord::Migration
  def self.up
    create_table :user_section_posts do |t|
      t.integer :user_id
      t.integer :section_post_id
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :user_section_posts
  end
end
