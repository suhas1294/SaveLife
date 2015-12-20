class Web::UsersController < ApplicationController

  def new
  end

  def index
  end

  def create
  	@contact = Contact.new(user_params)
  	@contact.valid?
  	if @contact.save!
  		redirect_to search_donars_path(:contact_id => @contact.id)
  	else
  		render "new"
  	end
  end

  def search_donars
    @contact= Contact.find(params[:contact_id])
  	@donars = Profile.where("blood_group_id = ?", @contact.blood_group_id).order("created_at desc")
  end

  def send_email
    user_ids = params[:user_ids]
    contact= Contact.find(params[:contact_id])
    if user_ids.present?
    user_ids.each do |u|
      user = Profile.find_by_user_id(u)
      UserMailer.request_email(user, contact).deliver_now
    end
  else
  end
    redirect_to root_url    
  end

  private
  def user_params
  	params.require(:user).permit(:name, :phone_number, :blood_group_id, :when)
  end
end