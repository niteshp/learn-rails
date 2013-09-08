class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
		render 'visitors/new'	# Optional
	end

end