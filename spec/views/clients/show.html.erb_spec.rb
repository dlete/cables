require 'spec_helper'

describe "clients/show.html.erb" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :organization => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
