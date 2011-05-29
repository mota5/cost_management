require 'spec_helper'

describe "project_report_plant_categories/edit.html.erb" do
  before(:each) do
    @project_report_plant_category = assign(:project_report_plant_category, stub_model(ProjectReportPlantCategory,
      :project_id => "",
      :plant_category_id => "",
      :lock_version => 1
    ))
  end

  it "renders the edit project_report_plant_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_report_plant_categories_path(@project_report_plant_category), :method => "post" do
      assert_select "input#project_report_plant_category_project_id", :name => "project_report_plant_category[project_id]"
      assert_select "input#project_report_plant_category_plant_category_id", :name => "project_report_plant_category[plant_category_id]"
      assert_select "input#project_report_plant_category_lock_version", :name => "project_report_plant_category[lock_version]"
    end
  end
end
