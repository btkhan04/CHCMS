class RegistrationsController < Devise::RegistrationsController
  def index
    @users = User.all
  end
  private

  # def sign_up_params
  #   params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  # end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :date_of_birth, :sex, :address, :postcode, :mobile, :role, :assigned_hours, :NI, :email, :password, :password_confirmation, :current_password)
  end
end