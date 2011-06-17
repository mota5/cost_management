require 'spec_helper'

describe "users/show.html.erb" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :login_code => "Login Code",
      :login_passwd => "Login Passwd",
      :family_name => "Family Name",
      :first_name => "First Name",
      :family_kana_name => "Family Kana Name",
      :first_kana_name => "First Kana Name",
      :email_address => "Email Address",
      :lock_version => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Login Passwd/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Family Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Family Kana Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Kana Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
