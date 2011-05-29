require 'spec_helper'

describe "posts/index.html.erb" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :name => "Name",
        :superior_post_id => 1,
        :sort_no => 1,
        :lock_version => 1
      ),
      stub_model(Post,
        :name => "Name",
        :superior_post_id => 1,
        :sort_no => 1,
        :lock_version => 1
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
