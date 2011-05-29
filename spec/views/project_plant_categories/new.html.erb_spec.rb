require 'spec_helper'

describe "project_plant_categories/new.html.erb" do
  before(:each) do
    assign(:project_plant_category, stub_model(ProjectPlantCategory,
      :project_id => "",
      :plant_category_id => "",
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new project_plant_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_plant_categories_path, :method => "post" do
      assert_select "input#project_plant_category_project_id", :name => "project_plant_category[project_id]"
      assert_select "input#project_plant_category_plant_category_id", :name => "project_plant_category[plant_category_id]"
      assert_select "input#project_plant_category_lock_version", :name => "project_plant_category[lock_version]"
    end
  end
end
