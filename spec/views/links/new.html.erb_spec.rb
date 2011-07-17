require 'spec_helper'

describe "links/new.html.erb" do
  before(:each) do
    assign(:link, stub_model(Link,
      :reference => "MyString",
      :provider_id => 1,
      :link_end_a_endpoint_id => 1,
      :link_end_b_endpoint_id => 1,
      :link_end_a_medium_id => 1,
      :link_end_b_medium_id => 1,
      :link_medium_id => 1
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path, :method => "post" do
      assert_select "input#link_reference", :name => "link[reference]"
      assert_select "input#link_provider_id", :name => "link[provider_id]"
      assert_select "input#link_link_end_a_endpoint_id", :name => "link[link_end_a_endpoint_id]"
      assert_select "input#link_link_end_b_endpoint_id", :name => "link[link_end_b_endpoint_id]"
      assert_select "input#link_link_end_a_medium_id", :name => "link[link_end_a_medium_id]"
      assert_select "input#link_link_end_b_medium_id", :name => "link[link_end_b_medium_id]"
      assert_select "input#link_link_medium_id", :name => "link[link_medium_id]"
    end
  end
end
