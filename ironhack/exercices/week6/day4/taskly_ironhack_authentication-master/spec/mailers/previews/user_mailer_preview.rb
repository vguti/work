# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
	def welcome_preview
		UserMailer.welcome(User.first)
  	end
end
