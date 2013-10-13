json.array!(@tweet_stores) do |tweet_store|
  json.extract! tweet_store, :word, :tweet
  json.url tweet_store_url(tweet_store, format: :json)
end
