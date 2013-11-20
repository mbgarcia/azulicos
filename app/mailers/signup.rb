class Signup < ActionMailer::Base
	default from: 'no-reply@azulino.com.br'

	def confirm_email(user)
		@user = user

		@confirmation_link = confirmation_url({
			token: @user.confirmation_token
		})

		mail({
			to: user.email,
			bcc: ['sign ups <mbgarcia.pa@gmail.com>'],
			subject: I18n.t('signup.confirm_email.subject')
		})
	end
end