require 'spec_helper'

describe "circuits/show.html.erb" do
  before(:each) do
    @circuit = assign(:circuit, stub_model(Circuit,
      :reference => "Reference",
      :provider_id => 1,
      :circuit_end_a_endpoint_id => 1,
      :circuit_end_a_medium_id => 1,
      :circuit_end_b_endpoint_id => 1,
      :circuit_end_b_medium_id => 1,
      :circuit_medium_id => 1
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
