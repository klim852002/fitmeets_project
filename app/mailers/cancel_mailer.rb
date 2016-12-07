class CancelMailer < ActionMailer::Base

 def cancel_event(eventusers, event)

   @eventusers = eventusers
   @event = event

		mail( to: eventusers.map(&:email).uniq,
          from: "fitmeets@gmail.com",
          subject: "The sporting event that you joined has been cancelled"
        )
 end
end
