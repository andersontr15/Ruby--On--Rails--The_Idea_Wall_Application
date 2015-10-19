class UsersController < ApplicationController
	def new

	end

	def create
		user = User.new( name: params[:name], alias: params[:alias], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
		if user.password == user.password_confirmation and user.password.length > 7 and user.password_confirmation.length > 7
			user.save
			redirect_to "/sessions/new"
		else
			flash[:error1] = "Must fill out all fields and password fields must match as well as being at least 8 characters"
			redirect_to "/users/new"
		end
	end

	def show
		@user = User.find(params[:id])
	end
end