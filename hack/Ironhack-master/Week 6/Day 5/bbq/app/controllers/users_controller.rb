class UsersController < ApplicationController
	# before_action :authenticate_user!, only: :show //comes with device
  before_action :authorize_user, only: [:show]
	def show
		@user = User.find(params[:id])
		render 'users/show'
	end


  private
  def authorize_user
    unless current_user
      # flash = 'Please log in or register'  this is not working.
      redirect_to new_user_session_path
    end
  end
end

