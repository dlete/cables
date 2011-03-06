class Provider < ActiveRecord::Base
  validates_length_of :name,
    :minimum => 2,
    :maximum => 20
  validates :abbreviation, :length => {
    :minimum => 2,
    :maximum => 4
  }

  has_many :circuits
end
