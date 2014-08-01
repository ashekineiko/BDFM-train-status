require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
 class Text
	def send_text
		account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
		auth_token = '2008ea097713e401a16c54029058da82'

		# set up a client to talk to the Twilio REST API
		@client = Twilio::REST::Client.new account_sid, auth_token

		@client.account.messages.create(
		  :from => '+18152642023',
		  :to => '+1917-268-0878',
		  :body => 'Hey there!'
		)
	end

end

my_text = Text.new
my_text.send_text