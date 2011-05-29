require 'spec_helper'

describe "users/index.html.erb" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :login_code => "Login Code",
        :login_passwd => "Login Passwd",
        :family_name => "Family Name",
        :first_name => "First Name",
        :family_kana_name => "Family Kana Name",
        :first_kana_name => "First Kana Name",
        :email_address => "Email Address",
        :superior_user_id => 1,
        :lock_version => 1
      ),
      stub_model(User,
        :login_code => "Login Code",
        :login_passwd => "Login Passwd",
        :family_name => "Family Name",
        :first_name => "First Name",
        :family_kana_name => "Family Kana Name",
        :first_kana_name => "First Kana Name",
        :email_address => "Email Address",
        :superior_user_id => 1,
        :lock_version => 1
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Login Passwd".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Family Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Family Kana Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Kana Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
