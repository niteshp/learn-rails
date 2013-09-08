class ContactsController < ApplicationController
	
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(secure_params)
		if @contact.valid?
			# TODO save data
			# TODO send message
			redirect_to root_path
			flash[:success] = "Message sent from #{@contact.name}."
		else
			render :new
		end
	end


	private
	def secure_params
		params.require(:contact).permit(:name, :email, :content)
	end

end