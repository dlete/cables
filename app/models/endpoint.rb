class Endpoint < ActiveRecord::Base
  validates_length_of :name,
    :minimum => 2,
    :maximum => 99
  validates :abbreviation, :length => {
    :minimum => 2,
    :maximum => 99
  }

  has_many :end_a_endpoint, :class_name => 'Circuit', :foreign_key => 'end_a_endpoint_id'
  has_many :end_b_endpoint, :class_name => 'Circuit', :foreign_key => 'end_b_endpoint_id'

  has_many :link_end_a_endpoint, :class_name => 'Link', :foreign_key => 'link_end_a_endpoint_id'
  has_many :link_end_b_endpoint, :class_name => 'Link', :foreign_key => 'link_end_b_endpoint_id'
end
