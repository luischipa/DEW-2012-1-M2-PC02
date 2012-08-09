class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = '9H7tT13yZfLrBusER31A'
      config.consumer_secret = 'DyTeEvP9wYjxfpo92PVmkqwu3bQj8jROHcosM92C4'
      config.oauth_token = '729654488-8tuqiz7LkV25zfgPV0KAouwYv9vjk1sQowrn80Vt'
      config.oauth_token_secret = 'oGfHE8nRAPlSry9A4LuVcPPkZRgYArfahEETeMOXk'
end    

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).first.text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
	
  end
  
  def update_status
	return "sin update" if self.message.blank?
	Twitter.update(self.message)
	

	
  end
   
end
