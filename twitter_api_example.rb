require "net/http"
require 'net/https'
require "uri"
require 'oauth'
require 'json'


# consumer_key = OAuth::Consumer.new()
# access_token = OAuth::Token.new()


# Exercise 4 - Send a tweet

# baseurl = "https://api.twitter.com"
# path    = "/1.1/statuses/update.json"
# address = URI("#{baseurl}#{path}")
# request = Net::HTTP::Post.new address.request_uri
# request.set_form_data(
#   "status" => "Tweet from the terminal!",
# )

# http             = Net::HTTP.new address.host, address.port
# http.use_ssl     = true
# http.verify_mode = OpenSSL::SSL::VERIFY_PEER
# request.oauth! http, consumer_key, access_token
# http.start
# response = http.request request

# tweet = nil
# if response.code == '200' then
#   tweet = JSON.parse(response.body)
#   puts "Successfully sent #{tweet["text"]}"
# else
#   puts "Could not send the Tweet! " +
#   "Code:#{response.code} Body:#{response.body}"
# end


# Exercise 3 - Reading a timeline

# baseurl = "https://api.twitter.com"
# path    = "/1.1/statuses/user_timeline.json"
# query   = URI.encode_www_form(
#     "screen_name" => "EsmeOKeefe",
#     "count" => 10,
# )
# address = URI("#{baseurl}#{path}?#{query}")
# request = Net::HTTP::Get.new address.request_uri

# # Print data about a list of Tweets
# def print_timeline(tweets)
#   tweets.each { |tweet| puts tweet["text"] }
# end

# http             = Net::HTTP.new address.host, address.port
# http.use_ssl     = true
# http.verify_mode = OpenSSL::SSL::VERIFY_PEER
# request.oauth! http, consumer_key, access_token
# http.start
# response = http.request request

# tweets = nil
# if response.code == '200' then
#   tweets = JSON.parse(response.body)
#   print_timeline(tweets)
# else
#   puts response.code
# end



# Exercise 2 - Single tweet

# baseurl = "https://api.twitter.com"
# path    = "/1.1/statuses/show.json"
# tweet_id = "266270116780576768"
# query   = URI.encode_www_form("id" => tweet_id)
# address = URI("#{baseurl}#{path}?#{query}")
# request = Net::HTTP::Get.new address.request_uri

# # Print data about a Tweet
# def print_tweet(tweet)
#   screen_name = tweet["user"]["screen_name"]
#   text = tweet["text"]

#   puts "#{screen_name} - #{text}"
# end


# http             = Net::HTTP.new address.host, address.port
# http.use_ssl     = true
# http.verify_mode = OpenSSL::SSL::VERIFY_PEER
# request.oauth! http, consumer_key, access_token
# http.start
# response = http.request request

# tweet = nil
# if response.code == '200' then
#   tweet = JSON.parse(response.body)
#   print_tweet(tweet)
# end



#EXERCISE 1 - Parse a user


# def parse_user_response(response)
#   user = nil

#   if response.code == '200'
#     user = JSON.parse(response.body)
#     puts "Hello, #{user["screen_name"]}!"
#   else
#     puts "Expected a response of 200 but got #{response.code} instead"
#   end
# end


# address = URI("https://api.twitter.com/1.1/account/verify_credentials.json")

# http = Net::HTTP.new address.host, address.port
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_PEER

# request = Net::HTTP::Get.new address.request_uri
# request.oauth! http, consumer_key, access_token

# http.start
# response = http.request request
# puts "The response status was #{response.code}"
# puts "The response body was #{response.body}"
# parse_user_response(response)
