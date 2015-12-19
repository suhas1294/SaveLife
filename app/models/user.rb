class User < ActiveRecord::Base
  has_secure_password

  #Associations
  has_one :profile
  has_one :address

  # Callbacks
  before_create do
    User::AuthTokenGenerator.new(self).generate
  end

end
