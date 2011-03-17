require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_providers
    make_endpoints
    make_media
    make_circuits
  end
end

def make_providers
  Provider.create!(:name => "BT Ireland",
                   :abbreviation => "BT")

  13.times do |n|
    name  = Faker::Company.name
    abbreviation = Faker::Internet.domain_word.to_s.capitalize
    Provider.create!(:name => name,
                     :abbreviation => abbreviation)
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
                  :provider_id => Integer ("3"),
                  :end_a => Endpoint.find(1),
                  :end_b => Endpoint.find(2),
                  :medium_id => Integer ("2"))

  47.times do |n|
    reference = Faker::Address.zip_code
    provider_id = (rand * Provider.count).ceil
    end_a = Endpoint.find((rand * Endpoint.count).ceil)
    end_b = Endpoint.find((rand * Endpoint.count).ceil)
    medium_id = (rand * Medium.count).ceil
    Circuit.create!(:reference => reference,
                    :provider_id => provider_id,
                    :end_a => end_a,
                    :end_b => end_b,
                    :medium_id => medium_id)
  end
end
