class ApplicationMailer < ActionMailer::Base
 class ApplicationMailer < ActionMailer::Base
  default from: 'your-email@example.com'

  layout 'mailer'
end
end
