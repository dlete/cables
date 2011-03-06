require 'spec_helper'

describe "circuits/show.html.erb" do
  before(:each) do
    @circuit = assign(:circuit, stub_model(Circuit,
      :reference => "Reference",
      :provider => nil,
      :end_a => 1,
      :end_b => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reference/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
