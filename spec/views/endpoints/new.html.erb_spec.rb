require 'spec_helper'

describe "endpoints/new.html.erb" do
  before(:each) do
    assign(:endpoint, stub_model(Endpoint,
      :name => "MyString",
      :abbreviation => "MyString"
    ).as_new_record)
  end

  it "renders new endpoint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => endpoints_path, :method => "post" do
      assert_select "input#endpoint_name", :name => "endpoint[name]"
      assert_select "input#endpoint_abbreviation", :name => "endpoint[abbreviation]"
    end
  end
end
