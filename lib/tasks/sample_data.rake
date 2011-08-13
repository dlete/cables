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
  Organization.create(:abbreviation => 'ASPD', :name => 'Airspeed')
  Organization.create(:abbreviation => 'BTI', :name => 'BT Ireland')
  Organization.create(:abbreviation => 'ENET', :name => 'e|Net')
  Organization.create(:abbreviation => 'ESBT', :name => 'ESB Telecoms')
  Organization.create(:abbreviation => 'UPC', :name => 'UPC')

  Organization.create(:abbreviation => 'DCU', :name => 'Dublin City University')
  Organization.create(:abbreviation => 'NUIG', :name => 'National University Ireland Galway')
  Organization.create(:abbreviation => 'NUIM', :name => 'National University Ireland Maynooth')
  Organization.create(:abbreviation => 'RCSI', :name => 'Royal College Surgerons Ireland')
  Organization.create(:abbreviation => 'TCD', :name => 'Trinity College Dublin')
  Organization.create(:abbreviation => 'UCD', :name => 'University College Dulin')
  Organization.create(:abbreviation => 'UL', :name => 'University Limerick')
end

def make_clients
  Client.create!(:organization_id => Organization.find_by_abbreviation('DCU').id)
  Client.create!(:organization_id => Organization.find_by_abbreviation('NUIG').id)
  Client.create!(:organization_id => Organization.find_by_abbreviation('NUIM').id)
  Client.create!(:organization_id => Organization.find_by_abbreviation('RCSI').id)
  Client.create!(:organization_id => Organization.find_by_abbreviation('TCD').id)
  Client.create!(:organization_id => Organization.find_by_abbreviation('UCD').id)
  Client.create!(:organization_id => Organization.find_by_abbreviation('UL').id)
end

def make_providers
  Provider.create!(:organization_id => Organization.find_by_abbreviation('ASPD').id)
  Provider.create!(:organization_id => Organization.find_by_abbreviation('BTI').id)
  Provider.create!(:organization_id => Organization.find_by_abbreviation('ENET').id)
  Provider.create!(:organization_id => Organization.find_by_abbreviation('ESBT').id)
  Provider.create!(:organization_id => Organization.find_by_abbreviation('UPC').id)
end

def make_endpoints
  Endpoint.create!(:name => "bh-pe1.ardnet.net", :abbreviation => "bh-pe1")
  Endpoint.create!(:name => "bh-pe1.ardnet.net", :abbreviation => "bh-pe2")
  Endpoint.create!(:name => "cork-pe1.ardnet.net", :abbreviation => "cork-pe1")
  Endpoint.create!(:name => "cork-pe2.ardnet.net", :abbreviation => "cork-pe2")
  Endpoint.create!(:name => "cwt-pe1.ardnet.net", :abbreviation => "cwt-pe1")
  Endpoint.create!(:name => "cwt-pe2.ardnet.net", :abbreviation => "cwt-pe2")
  Endpoint.create!(:name => "dcu-pe1.ardnet.net", :abbreviation => "dcu-pe1")
  Endpoint.create!(:name => "dun-pe1.ardnet.net", :abbreviation => "dun-pe1")
  Endpoint.create!(:name => "fetac-pe1.ardnet.net", :abbreviation => "fetac-pe1")
  Endpoint.create!(:name => "gal-pe1.ardnet.net", :abbreviation => "gal-pe1")
  Endpoint.create!(:name => "gal-pe2.ardnet.net", :abbreviation => "gal-pe2")
  Endpoint.create!(:name => "lim-pe1.ardnet.net", :abbreviation => "lim-pe1")
  Endpoint.create!(:name => "pw-pe1.ardnet.net", :abbreviation => "pw-pe1")
  Endpoint.create!(:name => "pw-pe2.ardnet.net", :abbreviation => "pw-pe2")
  Endpoint.create!(:name => "tcd-pe1.ardnet.net", :abbreviation => "tcd-pe2")
  Endpoint.create!(:name => "ucd-pe1.ardnet.net", :abbreviation => "ucd-pe1")
  Endpoint.create!(:name => "wit-pe1.ardnet.net", :abbreviation => "wit-pe1")
  Endpoint.create!(:name => "wit-pe2.ardnet.net", :abbreviation => "wit-pe2")

  Endpoint.create!(:abbreviation => "BH1", :name => "Blanchardstown Servecentric, MMR1")
  Endpoint.create!(:abbreviation => "BH2", :name => "Blanchardstown Servecentric, MMR2")
  Endpoint.create!(:abbreviation => "CWT1", :name => "Citywest ESAT-X, MMR1")
  Endpoint.create!(:abbreviation => "CWT2", :name => "Citywest ESAT-X, MMR2")
  Endpoint.create!(:abbreviation => "DCU1", :name => "DCU Henry Gratham")
  Endpoint.create!(:abbreviation => "DCU2", :name => "DCU Library")
  Endpoint.create!(:abbreviation => "NCI1", :name => "National College Ireland")
  Endpoint.create!(:abbreviation => "NUIG1", :name => "NUIG HEAnet PoP")
  Endpoint.create!(:abbreviation => "NUIG2", :name => "NUIG DERI Center")
  Endpoint.create!(:abbreviation => "PW1", :name => "Park West Interxion, MMR1")
  Endpoint.create!(:abbreviation => "PW2", :name => "Park West Interxion, MMR2")
  Endpoint.create!(:abbreviation => "TCD1", :name => "TCD Pearse")
  Endpoint.create!(:abbreviation => "TCD2", :name => "TCD O'Reilly")
  Endpoint.create!(:abbreviation => "UCD1", :name => "UCD Daedalus")
  Endpoint.create!(:abbreviation => "UCD1", :name => "UCD LG14")
  Endpoint.create!(:abbreviation => "WIT1", :name => "WIT Walton")
  Endpoint.create!(:abbreviation => "WIT2", :name => "WIT Tourism & Leisure")

  Endpoint.create!(:name => "oadm1-arklow.hea.net", :abbreviation => "oadm1-arklow")
  Endpoint.create!(:name => "oadm1-athlone.hea.net", :abbreviation => "oadm1-athlone")
  Endpoint.create!(:name => "oadm1-carlow.hea.net", :abbreviation => "oadm1-carlow")
  Endpoint.create!(:name => "oadm1-carrick.hea.net", :abbreviation => "oadm1-carrick")
  Endpoint.create!(:name => "oadm1-cork.hea.net", :abbreviation => "oadm1-cork")
  Endpoint.create!(:name => "oadm1-cwt.hea.net", :abbreviation => "oadm1-cwt")
  Endpoint.create!(:name => "oadm1-dcu.hea.net", :abbreviation => "oadm1-dcu")
  Endpoint.create!(:name => "oadm1-drumline.hea.net", :abbreviation => "oadm1-drumline")
  Endpoint.create!(:name => "oadm1-dundalk.hea.net", :abbreviation => "oadm1-dundalk")
  Endpoint.create!(:name => "oadm1-galway.hea.net", :abbreviation => "oadm1-galway")
  Endpoint.create!(:name => "oadm1-letterkenny.hea.net", :abbreviation => "oadm1-letterkenny")
  Endpoint.create!(:name => "oadm1-limerick.hea.net", :abbreviation => "oadm1-limerick")
  Endpoint.create!(:name => "oadm1-pw.hea.net", :abbreviation => "oadm1-pw")
  Endpoint.create!(:name => "oadm1-sc.hea.net", :abbreviation => "oadm1-sc")
  Endpoint.create!(:name => "oadm1-sligo.hea.net", :abbreviation => "oadm1-sligo")
  Endpoint.create!(:name => "oadm1-stradbally.hea.net", :abbreviation => "oadm1-stradbally")
  Endpoint.create!(:name => "oadm1-tcd.hea.net", :abbreviation => "oadm1-tcd")
  Endpoint.create!(:name => "oadm1-tralee.hea.net", :abbreviation => "oadm1-tralee")
  Endpoint.create!(:name => "oadm1-ucd.hea.net", :abbreviation => "oadm1-ucd")
  Endpoint.create!(:name => "oadm1-waterford.hea.net", :abbreviation => "oadm1-waterford")
  Endpoint.create!(:name => "oadm2-athlone.hea.net", :abbreviation => "oadm2-athlone")
  Endpoint.create!(:name => "oadm2-cwt.hea.net", :abbreviation => "oadm2-cwt")
  Endpoint.create!(:name => "oadm2-drumline.hea.net", :abbreviation => "oadm2-drumline")
  Endpoint.create!(:name => "oadm2-galway.hea.net", :abbreviation => "oadm2-galway")
  Endpoint.create!(:name => "oadm2-limerick.hea.net", :abbreviation => "oadm2-limerick")
  Endpoint.create!(:name => "oadm2-pw.hea.net", :abbreviation => "oadm2-pw")
  Endpoint.create!(:name => "oadm2-sc.hea.net", :abbreviation => "oadm2-sc")
  Endpoint.create!(:name => "oadm2-sligo.hea.net", :abbreviation => "oadm2-sligo")
  Endpoint.create!(:name => "oadm2-waterford.hea.net", :abbreviation => "oadm2-waterford")
end

def make_media
  Medium.create!(:name => "Copper, Cat6e UTP")
  Medium.create!(:name => "Fibre MM")
  Medium.create!(:name => "Fibre SM")
end

def make_circuits
  47.times do |n|
    reference = Faker::Address.zip_code
    provider_id = (rand * Provider.count).ceil
    client_id = (rand * Client.count).ceil
    circuit_end_a_endpoint_id = (rand * Endpoint.count).ceil
    circuit_end_b_endpoint_id = (rand * Endpoint.count).ceil
    Circuit.create!(:reference => reference,
                    :provider_id => provider_id,
                    :client_id => client_id,
                    :circuit_end_a_endpoint_id => circuit_end_a_endpoint_id,
                    :circuit_end_b_endpoint_id => circuit_end_b_endpoint_id)
  end
end

def make_links
  47.times do |n|
    reference = Faker::Address.zip_code
    provider_id = (rand * Provider.count).ceil
    client_id = (rand * Client.count).ceil
    link_end_a_endpoint_id = (rand * Endpoint.count).ceil
    link_end_b_endpoint_id = (rand * Endpoint.count).ceil
    Link.create!(:reference => reference,
                 :provider_id => provider_id,
                 :client_id => client_id,
                 :link_end_a_endpoint_id => link_end_a_endpoint_id,
                 :link_end_b_endpoint_id => link_end_b_endpoint_id)
  end
end
