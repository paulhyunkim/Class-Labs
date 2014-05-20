class Owl < ActionMailer::Base
  default from: "paulhyunkim@gmail.com"

  def welcome(wizard)
  	@email = wizard
  	mail(to: @email.address, subject: "Yer a wizard #{@email.name}!")
  end
end
