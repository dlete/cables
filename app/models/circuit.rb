class Circuit < ActiveRecord::Base
  belongs_to :provider
  belongs_to :end_a, :class_name => 'Endpoint', :foreign_key => 'end_a'
  belongs_to :end_b, :class_name => 'Endpoint', :foreign_key => 'end_b'
  belongs_to :medium
end
