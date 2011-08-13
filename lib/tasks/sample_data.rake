require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_organizations
    make_clients
    make_providers
    make_endpoints
    make_media
    make_circuits
    make_links
  end
end

def make_organizations
  Organization.create!(:name => "Airspeed", :abbreviation => "Airspeed")
  Organization.create!(:name => "BTI", :abbreviation => "BT Ireland")
  Organization.create!(:name => "e|Net", :abbreviation => "e|Net")
  Organization.create!(:name => "ESBT", :abbreviation => "ESB Telecoms")
  Organization.create!(:name => "UPC", :abbreviation => "UPC")

  Organization.create!(:name => "IDA", :abbreviation => "Irish Development Agency")
  Organization.create!(:name => "NUIG", :abbreviation => "National University Ireland Galway")
  Organization.create!(:name => "NUIM", :abbreviation => "National University Ireland Maynooth")
  Organization.create!(:name => "RCSI", :abbreviation => "Royal College Surgerons Ireland")
  Organization.create!(:name => "TCD", :abbreviation => "Trinity College Dublin")
  Organization.create!(:name => "UCD", :abbreviation => "University College Dulin")
  Organization.create!(:name => "UL", :abbreviation => "University Limerick")
end

def make_clients
  8.times do |n|
    organization_id = (rand * Organization.count).ceil
    Client.create!(:organization_id => organization_id)
  end
end

def make_providers
  5.times do |n|
    organization_id = (rand * Organization.count).ceil
    Provider.create!(:organization_id => organization_id)
  end
end

def make_endpoints
  Endpoint.create!(:name => "BH1", :abbreviation => "Blanchardstown Servecentric")
  Endpoint.create!(:name => "CWT1", :abbreviation => "Citywest ESAT-X")
  Endpoint.create!(:name => "DCU1", :abbreviation => "DCU Henry Gratham")
  Endpoint.create!(:name => "DCU2", :abbreviation => "DCU Library")
  Endpoint.create!(:name => "NCI1", :abbreviation => "National College Ireland")
  Endpoint.create!(:name => "NUIG1", :abbreviation => "NUIG HEAnet PoP")
  Endpoint.create!(:name => "NUIG2", :abbreviation => "NUIG DERI Center")
  Endpoint.create!(:name => "PW", :abbreviation => "Park West Interxion")
  Endpoint.create!(:name => "TCD1", :abbreviation => "TCD Pearse")
  Endpoint.create!(:name => "TCD2", :abbreviation => "TCD O'Reilly")
  Endpoint.create!(:name => "UCD1", :abbreviation => "UCD Daedalus")
  Endpoint.create!(:name => "UCD1", :abbreviation => "UCD LG14")
  Endpoint.create!(:name => "WIT1", :abbreviation => "WIT Walton")
  Endpoint.create!(:name => "WIT2", :abbreviation => "WIT Tourism & Leisure")


  14.times do |n|
    name = Faker::Address.city
    abbreviation = Faker::Address.street_name
    Endpoint.create!(:name => name,
                       :abbreviation => abbreviation)
  end
end

def make_media
  Medium.create!(:name => "Copper, Cat6e UTP")
  Medium.create!(:name => "Fibre MM")
  Medium.create!(:name => "Fibre SM")
end

def make_circuits
  Circuit.create!(:reference => "adafdk",
                  :provider_id => Integer ("1"),
                  :circuit_end_a_endpoint_id => Integer ("3"),
                  :circuit_end_b_endpoint_id => Integer ("4"))

  47.times do |n|
    reference = Faker::Address.zip_code
    provider_id = (rand * Provider.count).ceil
    circuit_end_a_endpoint_id = (rand * Endpoint.count).ceil
    circuit_end_b_endpoint_id = (rand * Endpoint.count).ceil
    Circuit.create!(:reference => reference,
                    :provider_id => provider_id,
                    :circuit_end_a_endpoint_id => circuit_end_a_endpoint_id,
                    :circuit_end_b_endpoint_id => circuit_end_b_endpoint_id)
  end
end

def make_links
  Link.create!(:reference => "adafdk",
               :provider_id => Integer ("1"),
               :link_end_a_endpoint_id => Integer ("3"),
               :link_end_b_endpoint_id => Integer ("4"))

  47.times do |n|
    reference = Faker::Address.zip_code
    provider_id = (rand * Provider.count).ceil
    link_end_a_endpoint_id = (rand * Endpoint.count).ceil
    link_end_b_endpoint_id = (rand * Endpoint.count).ceil
    Link.create!(:reference => reference,
                 :provider_id => provider_id,
                 :link_end_a_endpoint_id => link_end_a_endpoint_id,
                 :link_end_b_endpoint_id => link_end_b_endpoint_id)
  end
end
