class Client < ActiveRecord::Base

  belongs_to :organization
  has_many :circuits
  has_many :links

  def organization_name
    organization.name
  end

end
