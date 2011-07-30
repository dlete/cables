class LinkLeg < ActiveRecord::Base
  belongs_to :link
  belongs_to :circuit
end
