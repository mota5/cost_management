class CreatePlantCategories < ActiveRecord::Migration
  def self.up
    create_table :plant_categories do |t|
      t.string :name, :null => false
      t.integer :superior_plant_category_id
      t.integer :sort_no
      t.integer :lock_version

      t.timestamps
    end
  end

  def self.down
    drop_table :plant_categories
  end
end
