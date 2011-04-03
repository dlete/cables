class Provider < ActiveRecord::Base
  belongs_to :organization
  has_many :circuits
end
