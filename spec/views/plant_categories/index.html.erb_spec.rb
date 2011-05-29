require 'spec_helper'

describe "plant_categories/index.html.erb" do
  before(:each) do
    assign(:plant_categories, [
      stub_model(PlantCategory,
        :name => "Name",
        :superior_plant_category_id => 1,
        :sort_no => 1,
        :lock_version => 1
      ),
      stub_model(PlantCategory,
        :name => "Name",
        :superior_plant_category_id => 1,
        :sort_no => 1,
        :lock_version => 1
      )
    ])
  end

  it "renders a list of plant_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
