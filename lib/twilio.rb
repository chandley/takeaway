require 'twilio-ruby'

TWILIO_SID  = ENV['TWILIO_SID']
TWILIO_AUTH_TOKEN = ENV['TWILIO_AUTH_TOKEN'] 
TWILIO_PHONE_NUMBER == ENV['TWILIO_PHONE_NUMBER'] 
RECEIVING_PHONE_NUMBER == ENV['RECEIVING_PHONE_NUMBER'] 

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
