require 'spec_helper'

describe ReportsController do
  render_views

  describe "GET 'summary'" do
    it "should be successful" do
      get 'summary'
      response.should be_success
    end
  end

end
