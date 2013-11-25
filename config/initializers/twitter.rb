TWITTER_CONFIG = YAML.load(File.read(Rails.root.join('config', 'twitter.yml')))[Rails.env]


TSTREAM = Twitter::Streaming::Client.new do |config|
	config.consumer_key        = TWITTER_CONFIG['consumer_key']
	config.consumer_secret     = TWITTER_CONFIG['consumer_secret']
	config.access_token        = TWITTER_CONFIG['access_token']
	config.access_token_secret = TWITTER_CONFIG['access_token_secret']
end

TCLIENT = Twitter::REST::Client.new do |config|
	config.consumer_key        = TWITTER_CONFIG['consumer_key']
	config.consumer_secret     = TWITTER_CONFIG['consumer_secret']
	config.access_token        = TWITTER_CONFIG['access_token']
	config.access_token_secret = TWITTER_CONFIG['access_token_secret']
end

#created_at
#topics = ["coffee", "tea"]
#TSTREAM.filter(:track => topics.join(",")) do |tweet|
#  puts "#{tweet.created_at} - #{tweet.text}"
#end