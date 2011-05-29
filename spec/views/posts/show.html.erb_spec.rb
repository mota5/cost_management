require 'spec_helper'

describe "posts/show.html.erb" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :name => "Name",
      :superior_post_id => 1,
      :sort_no => 1,
      :lock_version => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
