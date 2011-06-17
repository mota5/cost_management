require 'spec_helper'

describe "costs/index.html.erb" do
  before(:each) do
    assign(:costs, [
      stub_model(Cost,
        :activity_id => 1,
        :user_id => 1,
        :memo => "Memo",
        :lock_version => 1
      ),
      stub_model(Cost,
        :activity_id => 1,
        :user_id => 1,
        :memo => "Memo",
        :lock_version => 1
      )
    ])
  end

  it "renders a list of costs" do
    render
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
