require 'twilio-ruby'


account_sid = 'AC75cb3ebe9902bee6bd1109e6b09a4e43'
auth_token = 'd0f206f24814c8aa326bfaa7f6580cf8'



# alternatively, you can preconfigure the client like so
Twilio.configure do |config|
  config.account_sid = account_sid
  config.auth_token = auth_token
end


@client = Twilio::REST::Client.new

@client.messages.create(
  from: '+441484906117',
  to: '+447764615163',
  body: 'Chris is skill in twilio-ruby'
)