require "spec_helper"

describe EndpointsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/endpoints" }.should route_to(:controller => "endpoints", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/endpoints/new" }.should route_to(:controller => "endpoints", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/endpoints/1" }.should route_to(:controller => "endpoints", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/endpoints/1/edit" }.should route_to(:controller => "endpoints", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/endpoints" }.should route_to(:controller => "endpoints", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/endpoints/1" }.should route_to(:controller => "endpoints", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/endpoints/1" }.should route_to(:controller => "endpoints", :action => "destroy", :id => "1")
    end

  end
end
