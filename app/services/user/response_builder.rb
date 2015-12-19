class User::ResponseBuilder
  def initialize(user)
    @user = user
    @profile = @user.profile
    @address = @profile.address
    @response = Hash.new
    @response[:user] = {}
  end

  def build
    build_user_hash
    build_profile_hash
    build_profile_hash
    @response
  end

  private

  def build_user_hash
    @response[:user][:email] = @user.email
    @response[:user][:auth_token] = @user.auth_token
  end

  def build_profile_hash
    @response[:user][:profile] = {}
    @response[:user][:profile] = @profile.attributes.except(:created_at, :updated_at, :image, :user_id, :address_id)
    @response[:user][:profile][:blook_group] = @profile.blood_group.name
  end

  def build_address_hash
    @response[:user][:address] = {}
    @response[:user][:address] = @address.attributes.except(:created_at, :updated_at)
  end
end
