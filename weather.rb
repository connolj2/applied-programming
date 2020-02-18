require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "e0bd1716ae7b9073004af5cd3ee90dd1"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash

# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`
puts forecast
current_temp = forecast["currently"]["temperature"]
condtions = forecast["currently"]["summary"]
pp forecast
/
high_temperature = forecast["daily"]["data"][0]["temperatureHigh"]
puts high_temperature
puts forecast["daily"]["data"][1]["temperatureHigh"]
puts forecast["daily"]["data"][2]["temperatureHigh"] /

puts "In Evanston, it is currently #{current_temp} and #{condtions}"
for daily_forecast in forecast ["daily"]["data"]
    puts "A high temperature of #{daily_forecast["temperatureHigh"]} and #{daily_forecast["summary"]}" 
end


# Example output:
#
# In Chicago, it is currently 33.89 degress and Clear
# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.