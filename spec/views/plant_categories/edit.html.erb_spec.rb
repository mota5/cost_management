require 'spec_helper'

describe "plant_categories/edit.html.erb" do
  before(:each) do
    @plant_category = assign(:plant_category, stub_model(PlantCategory,
      :name => "MyString",
      :superior_plant_category_id => 1,
      :sort_no => 1,
      :lock_version => 1
    ))
  end

  it "renders the edit plant_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plant_categories_path(@plant_category), :method => "post" do
      assert_select "input#plant_category_name", :name => "plant_category[name]"
      assert_select "input#plant_category_superior_plant_category_id", :name => "plant_category[superior_plant_category_id]"
      assert_select "input#plant_category_sort_no", :name => "plant_category[sort_no]"
      assert_select "input#plant_category_lock_version", :name => "plant_category[lock_version]"
    end
  end
end
