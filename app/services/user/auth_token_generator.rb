class User::AuthTokenGenerator
  def initialize(user)
    @user = user
  end

  def generate
    begin
      @user.auth_token = SecureRandom.hex
    end while @user.class.exists?(auth_token: @user.auth_token)
  end
end

