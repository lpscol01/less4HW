class PostsController < ApplicationController::Base
	def index
		@posts = Post.all
		flash[:notice] = "Here are all the user posts."
	end
end