require "spec_helper"

describe MediaController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/media" }.should route_to(:controller => "media", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/media/new" }.should route_to(:controller => "media", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/media/1" }.should route_to(:controller => "media", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/media/1/edit" }.should route_to(:controller => "media", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/media" }.should route_to(:controller => "media", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/media/1" }.should route_to(:controller => "media", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/media/1" }.should route_to(:controller => "media", :action => "destroy", :id => "1")
    end

  end
end
