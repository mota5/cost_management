require 'spec_helper'

describe "section_posts/new.html.erb" do
  before(:each) do
    assign(:section_post, stub_model(SectionPost,
      :section_id => 1,
      :post_id => 1,
      :lock_version => 1
    ).as_new_record)
  end

  it "renders new section_post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => section_posts_path, :method => "post" do
      assert_select "input#section_post_section_id", :name => "section_post[section_id]"
      assert_select "input#section_post_post_id", :name => "section_post[post_id]"
      assert_select "input#section_post_lock_version", :name => "section_post[lock_version]"
    end
  end
end
