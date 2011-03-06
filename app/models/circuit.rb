class Circuit < ActiveRecord::Base
  belongs_to :provider
  belongs_to :endpoint, :class_name => "Endpoint", :foreign_key => "end_a"
  belongs_to :endpoint, :class_name => "Endpoint", :foreign_key => "end_b"
end
