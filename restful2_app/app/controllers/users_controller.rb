class UsersController < ApplicationController
  def index
		@users = User.all
		flash[:notice] = "Look at your users!"
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy

		@user = User.where(id: params[:id]).first
		if @user && @user.destroy
			flash[:notice] = "We've deleted your user"
		else
			flash[:alert] = "Cannot delete that user"
		end
		redirect_to "/users"
	end
end
