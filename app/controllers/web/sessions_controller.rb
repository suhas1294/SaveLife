class Web::SessionsController < ApplicationController

	def new
	end

	def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to after_sign_in_path(:blood_group_id => @user.profile.blood_group_id), :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
  session[:user_id] = nil
  redirect_to root_path
  flash[:notice] = "Logged out!"
  end

end