class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_notify
    logger.info "Sending email for registered user"
    @user = params[:user]
    @event = params[:event]
    @registered_user_email = params[:registered_user].email
    mail(to: @user.email, subject: "User registered to your event #{@event.name}")
  end
end
