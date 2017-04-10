namespace :email do
  desc 'テストのメールを送る'
  task test: :environment do
    puts 'メール送信開始'

    p UserMailer.welcome_email.deliver_now!

    puts 'メール送信完了'
  end
end
