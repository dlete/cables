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
  Organization.create!(:name => "IDA",
                   :abbreviation => "Irish Development Agency")
    33.times do |n|
    name  = Faker::Company.name
    abbreviation = Faker::Internet.domain_word.to_s.capitalize
    Organization.create!(:name => name,
                     :abbreviation => abbreviation)
  end
end

def make_clients
  17.times do |n|
    organization_id = (rand * Organization.count).ceil
    Client.create!(:organization_id => organization_id)
  end
end

def make_providers
  7.times do |n|
    organization_id = (rand * Organization.count).ceil
    Provider.create!(:organization_id => organization_id)
  end
end

def make_endpoints
  31.times do |n|
    name = Faker::Address.city
    abbreviation = Faker::Address.street_name
    Endpoint.create!(:name => name,
                       :abbreviation => abbreviation)
  end
end

def make_media
  5.times do |n|
    name = Faker::Company.name
    Medium.create!(:name => name)
  end
end

def make_circuits
  Circuit.create!(:reference => "adafdk",
                  :provider_id => Integer ("1"),
                  :circuit_end_a_endpoint_id => Integer ("3"),
                  :circuit_end_b_endpoint_id => Integer ("4"),
                  :circuit_end_a_medium_id => Integer ("2"),
                  :circuit_end_b_medium_id => Integer ("1"),
                  :circuit_medium_id => Integer ("1"))

  47.times do |n|
    reference = Faker::Address.zip_code
    provider_id = (rand * Provider.count).ceil
    circuit_end_a_endpoint_id = (rand * Endpoint.count).ceil
    circuit_end_b_endpoint_id = (rand * Endpoint.count).ceil
    circuit_end_a_medium_id = (rand * Medium.count).ceil
    circuit_end_b_medium_id = (rand * Medium.count).ceil
    circuit_medium_id = (rand * Medium.count).ceil
    Circuit.create!(:reference => reference,
                    :provider_id => provider_id,
                    :circuit_end_a_endpoint_id => circuit_end_a_endpoint_id,
                    :circuit_end_b_endpoint_id => circuit_end_b_endpoint_id,
                    :circuit_end_a_medium_id => circuit_end_a_medium_id,
                    :circuit_end_b_medium_id => circuit_end_b_medium_id,
                    :circuit_medium_id => circuit_medium_id)
  end
end

def make_links
  Link.create!(:reference => "adafdk",
               :provider_id => Integer ("1"),
               :link_end_a_endpoint_id => Integer ("3"),
               :link_end_b_endpoint_id => Integer ("4"),
               :link_end_a_medium_id => Integer ("2"),
               :link_end_b_medium_id => Integer ("1"),
               :link_medium_id => Integer ("1"))

  47.times do |n|
    reference = Faker::Address.zip_code
    provider_id = (rand * Provider.count).ceil
    link_end_a_endpoint_id = (rand * Endpoint.count).ceil
    link_end_b_endpoint_id = (rand * Endpoint.count).ceil
    link_end_a_medium_id = (rand * Medium.count).ceil
    link_end_b_medium_id = (rand * Medium.count).ceil
    link_medium_id = (rand * Medium.count).ceil
    Link.create!(:reference => reference,
                 :provider_id => provider_id,
                 :link_end_a_endpoint_id => link_end_a_endpoint_id,
                 :link_end_b_endpoint_id => link_end_b_endpoint_id,
                 :link_end_a_medium_id => link_end_a_medium_id,
                 :link_end_b_medium_id => link_end_b_medium_id,
                 :link_medium_id => link_medium_id)
  end
end
