require 'spec_helper'

describe "user_section_posts/index.html.erb" do
  before(:each) do
    assign(:user_section_posts, [
      stub_model(UserSectionPost,
        :user_id => 1,
        :section_post_id => 1,
        :lock_version => 1
      ),
      stub_model(UserSectionPost,
        :user_id => 1,
        :section_post_id => 1,
        :lock_version => 1
      )
    ])
  end

  it "renders a list of user_section_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
