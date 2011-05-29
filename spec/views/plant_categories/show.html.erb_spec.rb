require 'spec_helper'

describe "plant_categories/show.html.erb" do
  before(:each) do
    @plant_category = assign(:plant_category, stub_model(PlantCategory,
      :name => "Name",
      :superior_plant_category_id => 1,
      :sort_no => 1,
      :lock_version => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
