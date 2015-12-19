class Web::RegistrationsController < ApplicationController

  def new
  end

  def create
    user = User::Creation.new(user_params).create
    if user.errors.blank?
      # mail sending code
      # redirect
      redirect_to after_sign_in_path
    else
      render 'new'
    end
  end

  def after_sign_in
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :device_token, :device_id, :address =>[:address_1, :address_2, :city, :state_id, :country_id], :profile => [:first_name, :last_name, :blood_group_id, :mobile_number, :other_number]
  )
  end

end
