class User < ActiveRecord::Base
  has_secure_password

  #Associations
  has_one :profile
  has_one :address

  # Callbacks
  before_create do
    User::AuthTokenGenerator.new(self).generate
  end

  def self.authenticate(email, password)
  	@user = User.find_by_email(email)
	  if @user && @user.authenticate(password)
	    @user
	  else
	    nil
	  end
  end

end
