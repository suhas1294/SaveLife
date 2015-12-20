class Web::RegistrationsController < ApplicationController

  before_filter :require_login, :only => :after_sign_in

  def new
  end

  def create
    user = User::Creation.new(user_params).create
    if user.errors.blank?
      # mail sending code
      # redirect
      session[:user_id] = user.id
      redirect_to after_sign_in_path(:blood_group_id => user.profile.blood_group_id), :notice => "Signed up!"
    else
      redirect_to root_path
    end
  end

  def after_sign_in
    @user = Profile.find_by_blood_group_id(params[:blood_group_id])
    @contacts = Contact.where("blood_group_id = ?", @user.blood_group_id).all
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :device_token, :device_id, :address =>[:address_1, :address_2, :city, :state_id, :country_id], :profile => [:first_name, :last_name, :blood_group_id, :mobile_number, :other_number]
  )
  end

end
