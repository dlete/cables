class Endpoint < ActiveRecord::Base
  validates_length_of :name,
    :minimum => 2,
    :maximum => 20
  validates :abbreviation, :length => {
    :minimum => 2,
    :maximum => 18
  }

  has_many :circuits, :class_name => "Circuit", :foreign_key => 'end_a'
  has_many :circuits, :class_name => "Circuit", :foreign_key => 'end_b'
end
