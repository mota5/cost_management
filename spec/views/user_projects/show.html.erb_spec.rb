require 'spec_helper'

describe "user_projects/show.html.erb" do
  before(:each) do
    @user_project = assign(:user_project, stub_model(UserProject,
      :user_id => 1,
      :project_id => 1,
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
