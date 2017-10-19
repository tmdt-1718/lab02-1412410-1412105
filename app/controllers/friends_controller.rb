class FriendsController < ApplicationController
	def show
		@friends = Friend.where(friend: params[:id])
	end
end
