require 'spec_helper'

describe "project_statuses/show.html.erb" do
  before(:each) do
    @project_status = assign(:project_status, stub_model(ProjectStatus,
      :name => "Name",
      :lock_version => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
