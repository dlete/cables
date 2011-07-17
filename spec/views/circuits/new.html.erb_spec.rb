require 'spec_helper'

describe "circuits/new.html.erb" do
  before(:each) do
    assign(:circuit, stub_model(Circuit,
      :reference => "MyString",
      :provider_id => 1,
      :circuit_end_a_endpoint_id => 1,
      :circuit_end_a_medium_id => 1,
      :circuit_end_b_endpoint_id => 1,
      :circuit_end_b_medium_id => 1,
      :circuit_medium_id => 1
    ).as_new_record)
  end

  it "renders new circuit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => circuits_path, :method => "post" do
      assert_select "input#circuit_reference", :name => "circuit[reference]"
      assert_select "input#circuit_provider_id", :name => "circuit[provider_id]"
      assert_select "input#circuit_circuit_end_a_endpoint_id", :name => "circuit[circuit_end_a_endpoint_id]"
      assert_select "input#circuit_circuit_end_a_medium_id", :name => "circuit[circuit_end_a_medium_id]"
      assert_select "input#circuit_circuit_end_b_endpoint_id", :name => "circuit[circuit_end_b_endpoint_id]"
      assert_select "input#circuit_circuit_end_b_medium_id", :name => "circuit[circuit_end_b_medium_id]"
      assert_select "input#circuit_circuit_medium_id", :name => "circuit[circuit_medium_id]"
    end
  end
end
