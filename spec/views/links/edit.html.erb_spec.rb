require 'spec_helper'

describe "links/edit.html.erb" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :reference => "MyString",
      :provider_id => 1,
      :link_end_a_endpoint_id => 1,
      :link_end_b_endpoint_id => 1,
      :link_end_a_medium_id => 1,
      :link_end_b_medium_id => 1,
      :link_medium_id => 1
    ))
  end

  it "renders the edit link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path(@link), :method => "post" do
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
