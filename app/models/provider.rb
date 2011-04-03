class Provider < ActiveRecord::Base
  validates_length_of :name,
    :minimum => 2,
    :maximum => 99
  validates :abbreviation, :length => {
    :minimum => 2,
    :maximum => 99
  }

  belongs_to :organization
  has_many :circuits
  cattr_reader :per_page
  @@per_page = 13
end
