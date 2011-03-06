require 'spec_helper'

describe "endpoints/index.html.erb" do
  before(:each) do
    assign(:endpoints, [
      stub_model(Endpoint,
        :name => "Name",
        :abbreviation => "Abbreviation"
      ),
      stub_model(Endpoint,
        :name => "Name",
        :abbreviation => "Abbreviation"
      )
    ])
  end

  it "renders a list of endpoints" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Abbreviation".to_s, :count => 2
  end
end
