class Mensaje < ActiveRecord::Base
	def getmensajes
	# put your own credentials here 
    account_sid = 'AC5cbc91cbd018f4c42c2cff677df0ad7e' 
    auth_token = '8b89eea855181275f44065f70066442d' 
 
    # set up a client to talk to the Twilio REST API 
    @client = Twilio::REST::Client.new account_sid, auth_token 
 
    @client.account.messages.list({ to: '+14805269815', from: '+524929427694', })
    end
end
