require_relative '../../db/config'
require_relative '../models/legislator'
require_relative '../models/tweets'
require 'twitter'


  def store_tweets(firstname, twitter_id)
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "Mm6QTXg8DYaOwbc5Kfbdqah5L"
      config.consumer_secret     = "1GeqKEBIOY9b4ZAbnOxvAxjvN7lAmenbisVRZTmrHqXpMfG8kE"
      config.access_token        = "2907339704-qydhQkmspCgyVtYk578N5IAi8WclFy64nkbfd5f"
      config.access_token_secret = "Cjnyk9tgEUO7FLtnw3uYfY1U28Dox8ej39EEeX1wDcB5w"
    end

    tweets = client.user_timeline(twitter_id)
    @legislator_id = Legislator.find_by(firstname: firstname).id

    tweets.each do |tweet|
      Tweet.create(legislator_id: @legislator_id, tweet_description: tweet.text)
    end
  end