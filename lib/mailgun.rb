require 'mailgun'
require_relative 'scrape.rb'

class Email	
	def send_email(to)
    @to = to
    train_today = TrainStatus.new

		Mailgun.configure do |config|
		  config.api_key = 'key-e04f15891312f62e67615f735ab4622f'
		  config.domain  = 'sandboxb5a4a81c15464b55b599ead106ca91eb.mailgun.org'
		end

		# or alternatively:
		@mailgun = Mailgun(:api_key => 'your-api-key')

		parameters = {
		  :to => @to,
		  :subject => "Subway Status",
		  :text => "Here is the service status for the BDFM train service: #{train_today.status}.
		   Please visit this link for more info on the current status of this line and more. http://www.mta.info/",
		  :from => "postmaster@sandboxb5a4a81c15464b55b599ead106ca91eb.mailgun.org"
		}
		@mailgun.messages.send_email(parameters)
	end
end

