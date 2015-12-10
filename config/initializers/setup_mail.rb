ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address        =>  'smtp.sendgrid.net',
    :port           =>  '587',
    :authentication =>  :plain,
    :user_name      =>  'app44709802@heroku.com',
    :password       =>  'ciacasj97059', 
    :domin          =>  'heroku.com',
    :enable_starttls_auto   => true
}
