class Membermailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.membermailer.welcome.subject
  #
  def welcome(member)
    @member = member
	mail(:to => member.email, :subject=> "Welcome to St Vincent's GAA Club")
  end
end
