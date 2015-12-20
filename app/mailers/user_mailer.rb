class UserMailer < ActionMailer::Base
	default :from => "infoinspired11@gmail.com"

    def request_email(user,contact)
        @user = user
        @contact = contact
        group = @user.blood_group.name
        mail(:to=> @user.user.email, :subject=>"Reseting for '#{group}' blood")
     end
end
