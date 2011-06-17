require 'spec_helper'

describe "activities/new.html.erb" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :project_id => 1,
      :name => "MyString",
      :sort_no => 1,
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => activities_path, :method => "post" do
      assert_select "input#activity_project_id", :name => "activity[project_id]"
      assert_select "input#activity_name", :name => "activity[name]"
      assert_select "input#activity_sort_no", :name => "activity[sort_no]"
      assert_select "input#activity_lock_version", :name => "activity[lock_version]"
    end
  end
end
