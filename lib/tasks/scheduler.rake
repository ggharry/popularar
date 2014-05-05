desc "Pings PING_URL to keep a dyno alive"
task :dyno_ping do
  require "net/http"

  if ENV['PING_URL']
    uri = URI(ENV['PING_URL'])
    Net::HTTP.get_response(uri)
  end
end

task :clean_db do
  Tweet.where("created_at < ?",24.hours.ago).delete_all
end

task :add_surveillance => :environment do
  require 'tweetstream'

  TweetStream.configure do |config|
    config.consumer_key       = '1Mera4sUF0bKGMIT2B7hUA'
    config.consumer_secret    = 'WMhrotuXm2Ra8XyIGRCyPB4tqoQ5J1bmjpirbf0EA'
    config.oauth_token        = '14204637-m9fqrHc4zmTGUpRK1byxvzGRxZJ6ibA2fPFQe9MYf'
    config.oauth_token_secret = 'SfPwWYse6DzcHTVw0MZJxJu0YzcxVGW7LwMjzrLQd0'
    config.auth_method        = :oauth
  end

  TweetStream::Client.new.track('surveillance') do |status|

    tweet = Tweet.new
    tweet.content = status.text
    tweet.category = "surveillance"
    if status.media != []
      tweet.media_url = status.media[0].instance_variable_get(:@attrs)[:media_url]
    end
    tweet.tweet_id = status.instance_variable_get(:@attrs)[:id]
    tweet.save
    puts tweet

  end
end

task :add_sousveillance => :environment do
  require 'tweetstream'

  TweetStream.configure do |config|
    config.consumer_key       = '3qbpZuFrlKTpLKZu0bPeGo8FO'
    config.consumer_secret    = 'e0EZdcmifLkrrlUK3DvALWJSCDfPteywb2KlTUGbJZfPvyDtCx'
    config.oauth_token        = '14204637-VQHZKULLuJ1sSD5P5WrLZxR58TDnVKdAhxGYGVn1q'
    config.oauth_token_secret = 'VjtKCLR2msmk0WyRrqNOAXjXnbQDYdyOdegTTFOdFIv4h'
    config.auth_method        = :oauth
  end

  TweetStream::Client.new.track('sousveillance') do |status|

    tweet = Tweet.new
    tweet.content = status.text
    tweet.category = "sousveillance"
    if status.media != []
      tweet.media_url = status.media[0].instance_variable_get(:@attrs)[:media_url]
    end
    tweet.tweet_id = status.instance_variable_get(:@attrs)[:id]
    tweet.save
    puts tweet

  end
end

task :add_spaceglasses => :environment do
  require 'tweetstream'

  TweetStream.configure do |config|
    config.consumer_key       = 'd2YZ3yXldTixMos9h3YLzJ3ef'
    config.consumer_secret    = 'KMChsZFOqWtfvhX1LZkZ3gicEHeUJvr6UKpvlC76Wefyr3uJQX'
    config.oauth_token        = '14204637-U7yBS3TUKgIDfavm9BwR2ifLcIBnMT0xyo49EezCi'
    config.oauth_token_secret = 'rXM1A9yjNqtglVlNj8xykBZLvm8qrkcBWmgeVSMEoRgkX'
    config.auth_method        = :oauth
  end

  TweetStream::Client.new.track('spaceglasses', 'metaglasses', 'meta spaceglasses') do |status|

    tweet = Tweet.new
    tweet.content = status.text
    tweet.category = "spaceglasses"
    if status.media != []
      tweet.media_url = status.media[0].instance_variable_get(:@attrs)[:media_url]
    end
    tweet.tweet_id = status.instance_variable_get(:@attrs)[:id]
    tweet.save
    puts tweet

  end
end

task :add_oculus => :environment do
  require 'tweetstream'

  TweetStream.configure do |config|
    config.consumer_key       = 'C2nQZE8WjA8DhCBCR1hEUCQuc'
    config.consumer_secret    = 'DZsezfm6p2woqxgcqfxG7Za7VRcCyXmBJelVV6ftlgP5mDseeD'
    config.oauth_token        = '14204637-fcvNL6W71RboZg46OgKxZkXtAMlV5JQmGqqUEHFs8'
    config.oauth_token_secret = 'V7TbJd65Yy9vG5dAnbiRi9quUNlOD0paIiIEpSLmUgrRp'
    config.auth_method        = :oauth
  end

  TweetStream::Client.new.track('oculus', 'oculus rift') do |status|

    tweet = Tweet.new
    tweet.content = status.text
    tweet.category = "oculus"
    if status.media != []
      tweet.media_url = status.media[0].instance_variable_get(:@attrs)[:media_url]
    end
    tweet.tweet_id = status.instance_variable_get(:@attrs)[:id]
    tweet.save
    puts tweet

  end
end

task :add_google_glass => :environment do
  require 'tweetstream'

  TweetStream.configure do |config|
    config.consumer_key       = 'fvjs9dexHtGCKumE8aV9xLi20'
    config.consumer_secret    = 'stDP4puAAm1JDQX7Y0jsWDjVYNv0TftR7br6c7AUbqfuy6bWUU'
    config.oauth_token        = '1375454935-92W0AqnXPWa5TbFl9Xi6rrlsYTNZFbm95kkIYuq'
    config.oauth_token_secret = 'vgJ3L9OQGzdjHaKzKfDpqH6BDbTmHHmKTBDZsHqtFUKV1'
    config.auth_method        = :oauth
  end

  TweetStream::Client.new.track('google glass') do |status|

    tweet = Tweet.new
    tweet.content = status.text
    tweet.category = "google glass"
    if status.media != []
      tweet.media_url = status.media[0].instance_variable_get(:@attrs)[:media_url]
    end
    tweet.tweet_id = status.instance_variable_get(:@attrs)[:id]
    tweet.save
    puts tweet

  end
end
