require 'spec_helper'

describe "providers/show.html.erb" do
  before(:each) do
    @provider = assign(:provider, stub_model(Provider,
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
