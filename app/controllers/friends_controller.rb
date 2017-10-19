class FriendsController < ApplicationController
	def show
		@friends = User.find_by(params[:user_id]).friends
	end
end
