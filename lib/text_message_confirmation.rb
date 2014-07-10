require 'rubygems'
require 'twilio-ruby'
require 'customer'

module TextMessageConfirmation

	def delivery_time
		time = Time.now + 60*60
		"#{t.hour}:#{t.min}"
	end

	def confirmation_message
		account_sid = 'AC579c80906441a1da6c744aab9de51fba' 
			auth_token  = 'b1d7c58e900082106d5f5204013aaf1d'
			@client     = Twilio::REST::Client.new account_sid, auth_token

			message = @client.account.sms.messages.create(:body => "Thanks for your order #{@name}. It will arrive by #{delivery_time}",
			    :to   => "#{@number}",     
			    :from => "+441476500067")

	end

end