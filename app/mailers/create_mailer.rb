class CreateMailer < ActionMailer::Base

  def event_created(user)

    @user = user

    mail( to: user.email,
          from: "fitmeeets@gmail.com",
          subject: "Sporting Event created with FitMeets"
        )
  end
end
