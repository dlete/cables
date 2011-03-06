require 'spec_helper'

describe "providers/new.html.erb" do
  before(:each) do
    assign(:provider, stub_model(Provider,
      :name => "MyString",
      :abbreviation => "MyString"
    ).as_new_record)
  end

  it "renders new provider form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => providers_path, :method => "post" do
      assert_select "input#provider_name", :name => "provider[name]"
      assert_select "input#provider_abbreviation", :name => "provider[abbreviation]"
    end
  end
end
