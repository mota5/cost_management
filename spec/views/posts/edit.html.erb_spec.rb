require 'spec_helper'

describe "posts/edit.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :name => "MyString",
      :superior_post_id => 1,
      :sort_no => 1,
      :lock_version => 1
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_name", :name => "post[name]"
      assert_select "input#post_superior_post_id", :name => "post[superior_post_id]"
      assert_select "input#post_sort_no", :name => "post[sort_no]"
      assert_select "input#post_lock_version", :name => "post[lock_version]"
    end
  end
end
