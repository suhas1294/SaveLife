class Profile < ActiveRecord::Base

  # Assocations
  belongs_to :user
  belongs_to :address

  has_one :blood_group
end

