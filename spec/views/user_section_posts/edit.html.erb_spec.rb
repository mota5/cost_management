require 'spec_helper'

describe "user_section_posts/edit.html.erb" do
  before(:each) do
    @user_section_post = assign(:user_section_post, stub_model(UserSectionPost,
      :user_id => 1,
      :section_post_id => 1,
      :lock_version => 1
    ))
  end

  it "renders the edit user_section_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_section_posts_path(@user_section_post), :method => "post" do
      assert_select "input#user_section_post_user_id", :name => "user_section_post[user_id]"
      assert_select "input#user_section_post_section_post_id", :name => "user_section_post[section_post_id]"
      assert_select "input#user_section_post_lock_version", :name => "user_section_post[lock_version]"
    end
  end
end
