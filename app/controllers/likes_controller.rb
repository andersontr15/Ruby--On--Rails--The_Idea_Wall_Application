class LikesController < ApplicationController
	def create
		user = User.find(current_user)
		post = Idea.find(params[:id])
		Like.create(user:user, idea:post)
		redirect_to "/posts"
	end
end