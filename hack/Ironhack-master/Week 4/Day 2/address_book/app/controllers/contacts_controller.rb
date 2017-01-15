class ContactsController < ApplicationController
	def create
	# Create new Contact from params[:contact]
	contact = Contact.new(
		:name => params[:contact][:name],
		:address => params[:contact][:address],
		:phone => params[:contact][:phone],
		:email => params[:contact][:email])

		# Render contact's attributes
		contact.save

    		redirect_to('/contacts')
	end
end
