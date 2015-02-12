require 'rubygems'
require 'twilio-ruby'
# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC5cbc91cbd018f4c42c2cff677df0ad7e'

auth_token = '8b89eea855181275f44065f70066442d'


begin
    client = Twilio::REST::Client.new account_sid, auth_token
    client.account.messages.create(
      :from => "+14805269815",
      :to =>   "+524929427694",
      :body => "¿Cómo vas en tu proyecto hoy?"
    )
rescue Twilio::REST::RequestError => e
    puts e.message
end
