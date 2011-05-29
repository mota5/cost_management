require 'spec_helper'

describe "plants/show.html.erb" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :project_id => 1,
      :plant_category_id => 1,
      :user_id => 1,
      :memo => "Memo",
      :lock_version => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Memo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
