class Profile < ActiveRecord::Base

  # Assocations
  belongs_to :user
  belongs_to :address

  belongs_to :blood_group
end

