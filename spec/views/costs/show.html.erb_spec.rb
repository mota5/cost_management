require 'spec_helper'

describe "costs/show.html.erb" do
  before(:each) do
    @cost = assign(:cost, stub_model(Cost,
      :activity_id => 1,
      :user_id => 1,
      :memo => "Memo",
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
    rendered.should match(/Memo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
