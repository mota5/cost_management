require 'spec_helper'

describe "user_section_posts/new.html.erb" do
  before(:each) do
    assign(:user_section_post, stub_model(UserSectionPost,
      :user_id => 1,
      :section_id => 1,
      :post_id => 1,
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new user_section_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_section_posts_path, :method => "post" do
      assert_select "input#user_section_post_user_id", :name => "user_section_post[user_id]"
      assert_select "input#user_section_post_section_id", :name => "user_section_post[section_id]"
      assert_select "input#user_section_post_post_id", :name => "user_section_post[post_id]"
      assert_select "input#user_section_post_lock_version", :name => "user_section_post[lock_version]"
    end
  end
end
