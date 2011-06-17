require 'spec_helper'

describe "costs/new.html.erb" do
  before(:each) do
    assign(:cost, stub_model(Cost,
      :activity_id => 1,
      :user_id => 1,
      :memo => "MyString",
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new cost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => costs_path, :method => "post" do
      assert_select "input#cost_activity_id", :name => "cost[activity_id]"
      assert_select "input#cost_user_id", :name => "cost[user_id]"
      assert_select "input#cost_memo", :name => "cost[memo]"
      assert_select "input#cost_lock_version", :name => "cost[lock_version]"
    end
  end
end
