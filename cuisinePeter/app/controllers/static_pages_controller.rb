class StaticPagesController < ApplicationController

	def index 
		@contact = Contact.new
		@blog = Blog.all
	end 

	def new_contact
		@contact = Contact.new(contact_parmas)
		if @contact.save
			flash[:notice] = "Message Sent"
		else
			flash[:notice] = "Could not Send Message"
		end 	
			redirect_to '/'
	end 


	private 

	def contact_parmas 
			params.require(:contact).permit!
	end

end
