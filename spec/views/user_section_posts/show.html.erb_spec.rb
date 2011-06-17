require 'spec_helper'

describe "user_section_posts/show.html.erb" do
  before(:each) do
    @user_section_post = assign(:user_section_post, stub_model(UserSectionPost,
      :user_id => 1,
      :section_post_id => 1,
      :lock_version => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
