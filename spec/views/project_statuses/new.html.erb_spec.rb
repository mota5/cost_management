require 'spec_helper'

describe "project_statuses/new.html.erb" do
  before(:each) do
    assign(:project_status, stub_model(ProjectStatus,
      :name => "MyString",
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new project_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_statuses_path, :method => "post" do
      assert_select "input#project_status_name", :name => "project_status[name]"
      assert_select "input#project_status_lock_version", :name => "project_status[lock_version]"
    end
  end
end
