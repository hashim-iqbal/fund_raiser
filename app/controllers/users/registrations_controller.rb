module Users
  class RegistrationsController < DeviseTokenAuth::RegistrationsController

    private
      def sign_up_params
        params.require(:user).permit(:email, :password, :password_confirmation, :school_id)
      end
  end
end
