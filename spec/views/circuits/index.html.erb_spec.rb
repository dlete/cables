require 'spec_helper'

describe "circuits/index.html.erb" do
  before(:each) do
    assign(:circuits, [
      stub_model(Circuit,
        :reference => "Reference",
        :provider_id => 1,
        :circuit_end_a_endpoint_id => 1,
        :circuit_end_a_medium_id => 1,
        :circuit_end_b_endpoint_id => 1,
        :circuit_end_b_medium_id => 1,
        :circuit_medium_id => 1
      ),
      stub_model(Circuit,
        :reference => "Reference",
        :provider_id => 1,
        :circuit_end_a_endpoint_id => 1,
        :circuit_end_a_medium_id => 1,
        :circuit_end_b_endpoint_id => 1,
        :circuit_end_b_medium_id => 1,
        :circuit_medium_id => 1
      )
    ])
  end

  it "renders a list of circuits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
