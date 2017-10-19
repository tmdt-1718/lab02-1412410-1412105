class FriendsController < ApplicationController
	def show
		@friends = Friend.all
	end
end
