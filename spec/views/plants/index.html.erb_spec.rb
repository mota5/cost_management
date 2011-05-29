require 'spec_helper'

describe "plants/index.html.erb" do
  before(:each) do
    assign(:plants, [
      stub_model(Plant,
        :project_id => 1,
        :plant_category_id => 1,
        :user_id => 1,
        :memo => "Memo",
        :lock_version => 1
      ),
      stub_model(Plant,
        :project_id => 1,
        :plant_category_id => 1,
        :user_id => 1,
        :memo => "Memo",
        :lock_version => 1
      )
    ])
  end

  it "renders a list of plants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
