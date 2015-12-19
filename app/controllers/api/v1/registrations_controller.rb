module Api
  module V1
    class RegistrationsController < BaseController
      def create
        @proc_code = Proc.new do
          response = User::Creation.new(user_params).create
          if response.errors.blank?
            @data = response
          else
            @errors = response
          end

        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :device_token, :device_id, :address =>[:address_1, :address_2, :city, :state_id, :country_id], :profile => [:first_name, :last_name, :blood_group_id, :mobile_number, :other_number]
        )
      end
    end
  end
end
