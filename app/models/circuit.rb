class Circuit < ActiveRecord::Base
  belongs_to :provider

  belongs_to :circuit_end_a_endpoint, :class_name => 'Endpoint'
  belongs_to :circuit_end_b_endpoint, :class_name => 'Endpoint'

  belongs_to :circuit_end_a_medium, :class_name => 'Medium'
  belongs_to :circuit_end_b_medium, :class_name => 'Medium'
  belongs_to :circuit_medium, :class_name => 'Medium'
end
