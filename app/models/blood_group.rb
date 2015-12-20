class BloodGroup < ActiveRecord::Base

  #associations
  has_many :profiles
  has_many :contacts

end
