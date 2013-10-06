@client_rest=Twitter::REST::Client.new do |config|
  config.consumer_key        = 'Oz2823qZe95ZngJverF8rw'
  config.consumer_secret     = 'AQcXRkYX1woJDtlbHUj8xJC3GrGiOHj2jmlDLbTVpc'
  config.access_token        = '27643324-1SEH3ycadfpqOFjketZBmLnPsQYgqzlRbivVY50aL'
  config.access_token_secret = 'iHDbsPzka9qGNgNRXOyxlmm6heLex8GPUnfvKkkZA'
end

#Twitter.configure do |config|
#  config.consumer_key = 'Oz2823qZe95ZngJverF8rw'
#  config.consumer_secret = 'AQcXRkYX1woJDtlbHUj8xJC3GrGiOHj2jmlDLbTVpc'
#  config.oauth_token = '27643324-1SEH3ycadfpqOFjketZBmLnPsQYgqzlRbivVY50aL'
#  config.oauth_token_secret = 'iHDbsPzka9qGNgNRXOyxlmm6heLex8GPUnfvKkkZA'
#end

@client_stream = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "Oz2823qZe95ZngJverF8rw"
  config.consumer_secret     = "AQcXRkYX1woJDtlbHUj8xJC3GrGiOHj2jmlDLbTVpc"
  config.access_token        = "27643324-1SEH3ycadfpqOFjketZBmLnPsQYgqzlRbivVY50aL"
  config.access_token_secret = "iHDbsPzka9qGNgNRXOyxlmm6heLex8GPUnfvKkkZA"
end