class UserMailer < ApplicationMailer

  def invite_donation_email(user, email)
    @user = user
    @school = user.school
    @email = email
    mail(to: @email, subject: "Donation request invite from #{@user.email}")
  end
end
