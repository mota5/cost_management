class CreateProjectReportPlantCategories < ActiveRecord::Migration
  def self.up
    create_table :project_report_plant_categories do |t|
      t.integer :project_id, :null => false
      t.integer :plant_category_id, :null => false
      t.integer :lock_version

      t.timestamps
    end
    add_index :project_report_plant_categories, [:project_id, :plant_category_id], :unique => true, :name => :project_report_plant_categories_idx1
    add_index :project_report_plant_categories, [:plant_category_id, :project_id], :unique => true, :name => :project_report_plant_categories_idx2
  end

  def self.down
    drop_table :project_report_plant_categories
  end
end
