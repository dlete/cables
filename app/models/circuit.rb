class Circuit < ActiveRecord::Base
  belongs_to :client
  belongs_to :provider

  belongs_to :circuit_end_a_endpoint, :class_name => 'Endpoint'
  belongs_to :circuit_end_b_endpoint, :class_name => 'Endpoint'

  has_many :circuit_legs
  has_many :link_legs

# http://api.rubyonrails.org/classes/ActionView/Helpers/FormOptionsHelper.html#method-i-collection_select
  def summary_circuit
    "#{reference} #{provider.organization.name} #{circuit_end_a_endpoint.name} #{circuit_end_b_endpoint.name}"
  end

end
