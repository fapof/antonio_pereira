class LoginPage < SitePrism::Page
	element :email_fiel, "#user_email"
	element :password_fiel, "#user_password"
	element :submit_button, "#login-form > div.row > div:nth-child(2) > input"


	def log_in(email, password)
		email_fiel.set(email)
		password_fiel.set(password)
		submit_button.click	
	end
end
