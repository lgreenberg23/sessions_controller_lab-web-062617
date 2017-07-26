class SessionsController < ApplicationController


	def new 
	end

	def create
		@name = params[:name]
		if @name && !@name.empty?
			session[:name] = @name
			redirect_to root_path
		else
			redirect_to login_path
		end
	end


	def destroy
		session.clear
		redirect_to login_path
	end


end