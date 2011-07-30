class CircuitLeg < ActiveRecord::Base
  belongs_to :circuit
  belongs_to :link
end
