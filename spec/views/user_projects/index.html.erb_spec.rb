require 'spec_helper'

describe "user_projects/index.html.erb" do
  before(:each) do
    assign(:user_projects, [
      stub_model(UserProject,
        :user_id => 1,
        :project_id => 1,
        :lock_version => 1
      ),
      stub_model(UserProject,
        :user_id => 1,
        :project_id => 1,
        :lock_version => 1
      )
    ])
  end

  it "renders a list of user_projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
