class Medium < ActiveRecord::Base
  has_many :circuits
  has_many :end_a_medium, :class_name => 'Circuit', :foreign_key => 'end_a_medium_id'
  has_many :end_b_medium, :class_name => 'Circuit', :foreign_key => 'end_b_medium_id'

  has_many :links
  has_many :link_end_a_medium, :class_name => 'Link', :foreign_key => 'link_end_a_medium_id'
  has_many :link_end_b_medium, :class_name => 'Link', :foreign_key => 'link_end_b_medium_id'
  has_many :link_medium, :class_name => 'Link', :foreign_key => 'link_medium_id'
end
