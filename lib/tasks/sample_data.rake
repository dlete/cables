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
                  :end_a_endpoint_id => Integer ("3"),
                  :end_b_endpoint_id => Integer ("4"),
                  :end_a_medium_id => Integer ("2"),
                  :end_b_medium_id => Integer ("1"))

  47.times do |n|
    reference = Faker::Address.zip_code
    provider_id = (rand * Provider.count).ceil
    end_a_endpoint_id = (rand * Endpoint.count).ceil
    end_b_endpoint_id = (rand * Endpoint.count).ceil
    end_a_medium_id = (rand * Medium.count).ceil
    end_b_medium_id = (rand * Medium.count).ceil
    Circuit.create!(:reference => reference,
                    :provider_id => provider_id,
                    :end_a_endpoint_id => end_a_endpoint_id,
                    :end_b_endpoint_id => end_b_endpoint_id,
                    :end_a_medium_id => end_a_medium_id,
                    :end_b_medium_id => end_b_medium_id)
  end
end
