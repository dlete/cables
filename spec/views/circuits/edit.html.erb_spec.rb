require 'spec_helper'

describe "circuits/edit.html.erb" do
  before(:each) do
    @circuit = assign(:circuit, stub_model(Circuit,
      :reference => "MyString",
      :provider => nil,
      :end_a => 1,
      :end_b => 1
    ))
  end

  it "renders the edit circuit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => circuits_path(@circuit), :method => "post" do
      assert_select "input#circuit_reference", :name => "circuit[reference]"
      assert_select "input#circuit_provider", :name => "circuit[provider]"
      assert_select "input#circuit_end_a", :name => "circuit[end_a]"
      assert_select "input#circuit_end_b", :name => "circuit[end_b]"
    end
  end
end
