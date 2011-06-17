require 'spec_helper'

describe "posts/new.html.erb" do
  before(:each) do
    assign(:post, stub_model(Post,
      :name => "MyString",
      :sort_no => 1,
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path, :method => "post" do
      assert_select "input#post_name", :name => "post[name]"
      assert_select "input#post_sort_no", :name => "post[sort_no]"
      assert_select "input#post_lock_version", :name => "post[lock_version]"
    end
  end
end
