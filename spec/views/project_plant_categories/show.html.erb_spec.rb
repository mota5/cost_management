require 'spec_helper'

describe "project_plant_categories/show.html.erb" do
  before(:each) do
    @project_plant_category = assign(:project_plant_category, stub_model(ProjectPlantCategory,
      :project_id => "",
      :plant_category_id => "",
      :lock_version => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
