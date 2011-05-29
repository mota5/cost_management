class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :name, :null => false
#      t.integer :superior_post_id
      t.integer :sort_no
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
