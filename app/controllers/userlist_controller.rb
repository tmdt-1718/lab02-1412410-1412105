class UserlistController < ApplicationController
	before_action :authenticate
	def index
		@users = User.all
	end
end
