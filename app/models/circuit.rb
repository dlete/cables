class Circuit < ActiveRecord::Base
  belongs_to :client
  belongs_to :provider

  belongs_to :circuit_end_a_endpoint, :class_name => 'Endpoint'
  belongs_to :circuit_end_b_endpoint, :class_name => 'Endpoint'

  has_many :circuit_legs, :dependent => :destroy
  has_many :link_legs, :dependent => :destroy

# http://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-collection_select
  def summary_circuit
    "#{reference} #{provider.organization.abbreviation} #{circuit_end_a_endpoint.abbreviation} #{circuit_end_b_endpoint.abbreviation}"
  end

end
