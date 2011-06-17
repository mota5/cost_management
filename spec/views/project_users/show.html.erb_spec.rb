require 'spec_helper'

describe "project_users/show.html.erb" do
  before(:each) do
    @project_user = assign(:project_user, stub_model(ProjectUser,
      :project_id => 1,
      :user_id => 1,
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
  end
end
