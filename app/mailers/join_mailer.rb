class JoinMailer < ActionMailer::Base

  def join_event(user, event)

    # @sports_cat = event.sports_cat
    # @event_name = event.sports_name
    # @event_date = event.event_date
    # @event_address = event.event_address
    # @start_time = event.start_time
    # @end_time = event.end_time
    # @postal_code = event.postal_code
    @user = user
    @event = event

    mail( to: user.email,
          from: "fitmeets@gmail.com",
          subject: "You have joined a sports event on FitMeets"
        )
  end
end
