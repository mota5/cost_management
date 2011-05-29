require 'spec_helper'

describe "plants/new.html.erb" do
  before(:each) do
    assign(:plant, stub_model(Plant,
      :project_id => 1,
      :plant_category_id => 1,
      :user_id => 1,
      :memo => "MyString",
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plants_path, :method => "post" do
      assert_select "input#plant_project_id", :name => "plant[project_id]"
      assert_select "input#plant_plant_category_id", :name => "plant[plant_category_id]"
      assert_select "input#plant_user_id", :name => "plant[user_id]"
      assert_select "input#plant_memo", :name => "plant[memo]"
      assert_select "input#plant_lock_version", :name => "plant[lock_version]"
    end
  end
end
