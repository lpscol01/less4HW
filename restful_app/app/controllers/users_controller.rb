class UsersController < ApplicationController::Base
	def index
		@users = User.all
		flash[:notice] = "Look at your users!"
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy

		@user = User.find(params[:id])
		if @user.destroy
			flash[:notice] = "We've deleted your user"
			redirect_to "/users"
		else
			flash[:alert] = "Cannot delete that user"
		end
		redirect_to "/users"
	end

end
