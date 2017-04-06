class UserMailer < ApplicationMailer
  include SendGrid

  def welcome_email
    sendgrid_category 'MM-test01'

    @title = 'hello'
    mail(to: ENV['TO'], subject: 'Hello')
  end
end
