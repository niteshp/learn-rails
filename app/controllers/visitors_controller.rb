class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
		# render 'visitors/new'	# Optional
		# flash[:notice] = 'Welcome!'
		# flash[:alert] = 'My birthday is soon.'
	end

end