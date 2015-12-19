class User::Creation
  def initialize(params)
    @params = params.deep_symbolize_keys
    @user_params = @params.except(:profile, :address)
    @profile_params = @params[:profile]
    @address_params = @params[:address]
    @response = Hash.new
    @response[:user] = Hash.new
  end

  def create
    user = User.new(@user_params)
    profile = user.build_profile(@profile_params)
    address = profile.build_address(@address_params)
    user.save
    user
  end

  private

  def generate_response

  end

end
