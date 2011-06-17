require 'spec_helper'

describe "project_users/index.html.erb" do
  before(:each) do
    assign(:project_users, [
      stub_model(ProjectUser,
        :project_id => 1,
        :user_id => 1,
        :lock_version => 1
      ),
      stub_model(ProjectUser,
        :project_id => 1,
        :user_id => 1,
        :lock_version => 1
      )
    ])
  end

  it "renders a list of project_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
