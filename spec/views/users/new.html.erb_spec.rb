require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :login_code => "MyString",
      :login_passwd => "MyString",
      :family_name => "MyString",
      :first_name => "MyString",
      :family_kana_name => "MyString",
      :first_kana_name => "MyString",
      :email_address => "MyString",
      :superior_user_id => 1,
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_login_code", :name => "user[login_code]"
      assert_select "input#user_login_passwd", :name => "user[login_passwd]"
      assert_select "input#user_family_name", :name => "user[family_name]"
      assert_select "input#user_first_name", :name => "user[first_name]"
      assert_select "input#user_family_kana_name", :name => "user[family_kana_name]"
      assert_select "input#user_first_kana_name", :name => "user[first_kana_name]"
      assert_select "input#user_email_address", :name => "user[email_address]"
      assert_select "input#user_superior_user_id", :name => "user[superior_user_id]"
      assert_select "input#user_lock_version", :name => "user[lock_version]"
    end
  end
end
