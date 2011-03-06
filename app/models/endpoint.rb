class Endpoint < ActiveRecord::Base
  validates_length_of :name,
    :minimum => 2,
    :maximum => 99
  validates :abbreviation, :length => {
    :minimum => 2,
    :maximum => 99
  }

  has_many :circuits_end_a, :class_name => 'Circuit', :foreign_key => 'end_a'
  has_many :circuits_end_b, :class_name => 'Circuit', :foreign_key => 'end_b'
end
