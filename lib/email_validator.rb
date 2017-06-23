require "email_validator/version"

module EmailValidator
  def valid_email?(email_address)
    regex = /\A[^\(\),:;<>@\[\\\] ]+@([a-z\d\-]+\.)+[a-z]{2,}\z/i
    !!(email_address =~ regex)
  end
end

include EmailValidator
