require 'spec_helper'

describe "project_statuses/edit.html.erb" do
  before(:each) do
    @project_status = assign(:project_status, stub_model(ProjectStatus,
      :name => "MyString",
      :sort_no => 1,
      :lock_version => 1
    ))
  end

  it "renders the edit project_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => project_statuses_path(@project_status), :method => "post" do
      assert_select "input#project_status_name", :name => "project_status[name]"
      assert_select "input#project_status_sort_no", :name => "project_status[sort_no]"
      assert_select "input#project_status_lock_version", :name => "project_status[lock_version]"
    end
  end
end
