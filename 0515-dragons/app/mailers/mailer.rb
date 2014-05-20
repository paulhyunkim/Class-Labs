class Mailer < ActionMailer::Base
  default from: "paulhyunkim@gmail.com"

  def welcome(owner)
  	@email = owner
  	mail(to: @email.address, subject: "Your dragon has hatched, #{@email.name}!")
  end
end
