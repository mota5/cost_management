require 'spec_helper'

describe "user_projects/new.html.erb" do
  before(:each) do
    assign(:user_project, stub_model(UserProject,
      :user_id => 1,
      :project_id => 1,
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new user_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_projects_path, :method => "post" do
      assert_select "input#user_project_user_id", :name => "user_project[user_id]"
      assert_select "input#user_project_project_id", :name => "user_project[project_id]"
      assert_select "input#user_project_lock_version", :name => "user_project[lock_version]"
    end
  end
end
