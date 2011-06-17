require 'spec_helper'

describe "sections/new.html.erb" do
  before(:each) do
    assign(:section, stub_model(Section,
      :name => "MyString",
      :sort_no => 1,
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sections_path, :method => "post" do
      assert_select "input#section_name", :name => "section[name]"
      assert_select "input#section_sort_no", :name => "section[sort_no]"
      assert_select "input#section_lock_version", :name => "section[lock_version]"
    end
  end
end
