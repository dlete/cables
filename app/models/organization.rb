class Organization < ActiveRecord::Base
  has_many :clients
  has_many :providers
end
