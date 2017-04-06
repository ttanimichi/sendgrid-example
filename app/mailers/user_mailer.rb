class UserMailer < ApplicationMailer
  def welcome_email
    @title = 'hello'
    mail(to: ENV['TO'], subject: 'Hello')
  end
end
