class SiteController < ApplicationController
	def index
		@contacts = Contact.all
	end
end
