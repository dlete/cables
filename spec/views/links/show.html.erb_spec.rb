require 'spec_helper'

describe "links/show.html.erb" do
  before(:each) do
    @link = assign(:link, stub_model(Link,
      :reference => "Reference",
      :provider_id => 1,
      :link_end_a_endpoint_id => 1,
      :link_end_b_endpoint_id => 1,
      :link_end_a_medium_id => 1,
      :link_end_b_medium_id => 1,
      :link_medium_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reference/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
