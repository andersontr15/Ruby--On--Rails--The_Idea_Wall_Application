class PostsController < ApplicationController
	def index
		@ideas = Idea.all
		@user = User.all
	end

	def delete
		post = Idea.find(params[:id])
		post.destroy
		redirect_to "/posts"
	end

	def show
		@post = Idea.find(params[:id])
		@user = User.all
		@likes = Like.where(idea:@post, user:@user).select('distinct user_id')
	end

	def ideas
		user = User.find(params[:id])
		user.ideas.create(idea: params[:idea])
		redirect_to "/posts"
	end
end