class ProfileMailer < ApplicationMailer
  def profile_email
    mail(to: 'test@test.com', subject: 'Profile Mailer Results')
  end
end
