class RegistrationsController < Devise::RegistrationsController
  # def new
  #   super
  # end
  #
  # def create
  #   # add custom create logic here
  # end
  #
  # def update
  #   super
  # end

  def destroy
    sign_out(current_user)
    flash[:message] = "You are logged off"
    redirect_to root_path
  end
end
