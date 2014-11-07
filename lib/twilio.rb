require 'twilio-ruby'

class Postbox

  def initialize
    @account_sid = 'AC75cb3ebe9902bee6bd1109e6b09a4e43'
    @auth_token = 'd0f206f24814c8aa326bfaa7f6580cf8'
    configure
  end

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

  def send_message(message_hash)
    @client.messages.create(message_hash)
  end

  def message_hash 
    {
    from: '+441484906117',
    to: '+447764615163',
    body: 'Chris is skill in class'
    }
  end

end

my_postbox = Postbox.new
my_postbox.send_message(my_postbox.message_hash)
