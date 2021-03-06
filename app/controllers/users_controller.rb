class UsersController < ApplicationController
	
	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "welcome to this site"
			redirect_to @user
		else
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
