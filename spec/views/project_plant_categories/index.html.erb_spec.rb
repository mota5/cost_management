require 'spec_helper'

describe "project_plant_categories/index.html.erb" do
  before(:each) do
    assign(:project_plant_categories, [
      stub_model(ProjectPlantCategory,
        :project_id => "",
        :plant_category_id => "",
        :lock_version => 1
      ),
      stub_model(ProjectPlantCategory,
        :project_id => "",
        :plant_category_id => "",
        :lock_version => 1
      )
    ])
  end

  it "renders a list of project_plant_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
