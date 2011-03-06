require 'spec_helper'

describe "endpoints/show.html.erb" do
  before(:each) do
    @endpoint = assign(:endpoint, stub_model(Endpoint,
      :name => "Name",
      :abbreviation => "Abbreviation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Abbreviation/)
  end
end
