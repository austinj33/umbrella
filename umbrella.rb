pp "howdy"

require "http"
require "json"

pirate_weather_api_key = ENV.fetch("PIRATE_WEATHER")


gmaps_key = ENV.fetch("GMAPS")

pp "Where are you located?"

# user_location = gets.chomp

user_location = "Chicago"

maps_url = "https://maps.googleapis.com/maps/api/geocode/json?address="+ user_location +"key=" + ENV.fetch("GMAPS")

resp = HTTP.get(maps_url)

pp resp.to_s
