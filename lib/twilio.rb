require 'twilio-ruby'

TWILIO_SID  = 'AC75cb3ebe9902bee6bd1109e6b09a4e43'
TWILIO_AUTH_TOKEN = 'd0f206f24814c8aa326bfaa7f6580cf8'
TWILIO_PHONE_NUMBER = '+441484906117'
RECEIVING_PHONE_NUMBER = '+447764615163'

class Postbox

  def initialize
    @account_sid = TWILIO_SID
    @auth_token = TWILIO_AUTH_TOKEN
    configure
  end

  def post(message)
    send_to_client(message_hash(message),@client)
  end

private

  def configure
    pre_configure_twilio
    make_twilio_client
  end

  def pre_configure_twilio
    #  preconfigure the client like so
    Twilio.configure do |config|
      config.account_sid = @account_sid
      config.auth_token = @auth_token
    end
  end

  def make_twilio_client
    @client = Twilio::REST::Client.new
  end

  def send_to_client(message_hash,client)
    client.messages.create(message_hash)
  end

  def message_hash(message_string)
    {
    from: TWILIO_PHONE_NUMBER ,
    to: RECEIVING_PHONE_NUMBER ,
    body: message_string
    }
  end

end

my_postbox = Postbox.new
my_postbox.post("what a lovely day")
