class UserMailer < ApplicationMailer
  include SendGrid

  default(
    from: "ふろむ <#{ENV['FROM']}>",
    reply_to: "返信先 <#{ENV['FROM']}>",
    delivery_method: :smtp
  )

  def welcome_email
    sendgrid_category 'MM-test01'

    @title = 'hello'
    mail(subject: 'Hello, SendGrid', to: ENV['TO'])
  end
end
