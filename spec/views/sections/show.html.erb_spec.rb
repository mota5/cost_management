require 'spec_helper'

describe "sections/show.html.erb" do
  before(:each) do
    @section = assign(:section, stub_model(Section,
      :name => "",
      :sort_no => 1,
      :lock_version => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
