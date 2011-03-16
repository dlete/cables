require 'spec_helper'

describe ProvidersController do
  render_views

  describe "GET index" do
    describe "list all providers" do
      before(:each) do
        @providers = [@provider]
        30.times do
          @providers << Factory(:provider, :name => Factory.next(:name))
        end
      end

      it "should paginate providers" do
        get :index
        response.should have_selector('div')
        response.should have_selector("span.disabled", :content => "Previous")
        response.should have_selector("a", :href => "/providers?page=2",
                                           :content => "2")
        response.should have_selector("a", :href => "/providers?page=2",
                                           :content => "Next")
      end
    end
  end

  describe "GET 'show'" do
    before(:each) do
      @provider = Factory(:provider)
    end

    it "should be successful" do
      get :show, :id => @provider
      response.should be_success
    end

    it "should find the right provider" do
      get :show, :id => @provider
      assigns(:provider).should == @provider
    end
  end
 
end
