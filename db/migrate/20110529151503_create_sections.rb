class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.string :name, :null => false
      t.integer :superior_section_id
      t.integer :sort_no
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end
