class PostsController < ApplicationController
  def 
  	@posts = Post.where(user_id: params[:user_id])
	flash[:notice] = "Here are all the user posts."
  end
end
