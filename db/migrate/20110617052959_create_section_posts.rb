class CreateSectionPosts < ActiveRecord::Migration
  def self.up
    create_table :section_posts do |t|
      t.integer :section_id
      t.integer :post_id
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :section_posts
  end
end
