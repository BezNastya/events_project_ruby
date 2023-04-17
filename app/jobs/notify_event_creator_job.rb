class NotifyEventCreatorJob < ApplicationJob
  queue_as :default
  self.queue_adapter = :sidekiq

  def perform(event_id, user_id, registered_user_id)
    logger.info "Notifying user with id #{user_id} for changes in registered users for event id #{event_id}"
    event = Event.find event_id
    user = User.find user_id
    registered_user = User.find registered_user_id
    ApplicationMailer.with(user: user, event: event, registered_user: registered_user)
                     .send_notify.deliver
  end
end
