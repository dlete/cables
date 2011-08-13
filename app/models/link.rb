class Link < ActiveRecord::Base
  belongs_to :client
  belongs_to :provider

  belongs_to :link_end_a_endpoint, :class_name => 'Endpoint'
  belongs_to :link_end_b_endpoint, :class_name => 'Endpoint'

  has_many :circuit_legs
  has_many :link_legs
end
