require 'spec_helper'

describe "section_posts/index.html.erb" do
  before(:each) do
    assign(:section_posts, [
      stub_model(SectionPost,
        :section_id => 1,
        :post_id => 1,
        :lock_version => 1
      ),
      stub_model(SectionPost,
        :section_id => 1,
        :post_id => 1,
        :lock_version => 1
      )
    ])
  end

  it "renders a list of section_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
