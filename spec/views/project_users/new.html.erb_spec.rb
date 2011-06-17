require 'spec_helper'

describe "project_users/new.html.erb" do
  before(:each) do
    assign(:project_user, stub_model(ProjectUser,
      :project_id => 1,
      :user_id => 1,
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new project_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_users_path, :method => "post" do
      assert_select "input#project_user_project_id", :name => "project_user[project_id]"
      assert_select "input#project_user_user_id", :name => "project_user[user_id]"
      assert_select "input#project_user_lock_version", :name => "project_user[lock_version]"
    end
  end
end
