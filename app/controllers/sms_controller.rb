class SmsController < ApplicationController
  
  def receive
    number = "+12345"
    msg = "Hey, It worked!"
    
    send_sms(number, msg)  
  end

  def send_sms(number, msg)
    t = Tropo::Generator.new
    t.call(:to => number, :network => "SMS" )
    t.say(:value => msg)
    respond_to do |format|
      format.json { render text: t.response }
    end
  end
  
end
