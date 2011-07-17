class Provider < ActiveRecord::Base
  belongs_to :organization
  has_many :circuits

  def organization_name
    organization.name
  end
end
