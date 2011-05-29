require 'spec_helper'

describe "section_posts/show.html.erb" do
  before(:each) do
    @section_post = assign(:section_post, stub_model(SectionPost,
      :section_id => 1,
      :post_id => 1,
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
