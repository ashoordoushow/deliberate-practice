# #Write a program that uses a variable to store a number, then prints that number plus 10.
# number = 2
# puts number + 10



# #Use a variable to store a number, then write a condition that prints 0 if the number is equal to 10, and prints -1 otherwise.
# number = 10
# if number == 10
#   puts 0
# else
#   puts -1
# end


# #Write a while loop to print the numbers 1 through 10.
# number = 1
# while number <= 10
#   puts number
#   number = number + 1
# end

# #Write a while loop that prints the numbers 0 through 100, increasing by 5 each time.
# number = 0
# while number <= 100
#   puts number
#   number = number + 5
# end

#This is how you push your code through your terminal on github desktop

#ashoordoushow@Ashoors-Air deliberate-practice % git add --all
#ashoordoushow@Ashoors-Air deliberate-practice % git commit -m "Add new practice"
#[main e51f21e] Add new practice
# 1 file changed, 7 insertions(+)
#ashoordoushow@Ashoors-Air deliberate-practice % git push origin main
#Enumerating objects: 5, done.
#Counting objects: 100% (5/5), done.
#Delta compression using up to 8 threads
# Compressing objects: 100% (3/3), done.
# Writing objects: 100% (3/3), 413 bytes | 413.00 KiB/s, done.
# Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
# remote: Resolving deltas: 100% (1/1), completed with 1 local object.
# To https://github.com/ashoordoushow/deliberate-practice.git
#    bd9341b..e51f21e  main -> main





# Kata04: Data Munging
# Martin Fowler gave me a hard time for Kata02, complaining that it was yet another single-function, academic exercise. Which, or course, it was. So this week let’s mix things up a bit.

# Here’s an exercise in three parts to do with real world data. Try hard not to read ahead—do each part in turn.

# Part One: Weather Data
# # In weather.dat you’ll find daily weather data for Morristown, NJ for June 2002. Download this text file, then write a program to output the day number (column one) with the smallest temperature spread (the maximum temperature is the second column, the minimum the third column).
# def find_day_with_smallest_spread(file_path):
#     with open(file_path, 'r') as file:
#         min_spread = float('inf')  # Initialize with a large value
#         day_with_min_spread = None
        
#         for line in file:
#             # Split the line into columns and convert them to the appropriate types
#             parts = line.split()
#             day = int(parts[0])
#             max_temp = float(parts[1])
#             min_temp = float(parts[2])
            
#             # Calculate the temperature spread
#             spread = max_temp - min_temp
            
#             # Update the day with the smallest spread
#             if spread < min_spread:
#                 min_spread = spread
#                 day_with_min_spread = day
    
#     return day_with_min_spread

# # Replace 'weather.dat' with the path to your data file
# file_path = 'weather.dat'
# day = find_day_with_smallest_spread(file_path)
# print(f"The day with the smallest temperature spread is: {day}")

# Part Two: Soccer League Table
# The file football.dat contains the results from the English Premier League for 2001/2. The columns labeled ‘F’ and ‘A’ contain the total number of goals scored for and against each team in that season (so Arsenal scored 79 goals against opponents, and had 36 goals scored against them). Write a program to print the name of the team with the smallest difference in ‘for’ and ‘against’ goals.

# Part Three: DRY Fusion
# Take the two programs written previously and factor out as much common code as possible, leaving you with two smaller programs and some kind of shared functionality.

# Kata Questions
# To what extent did the design decisions you made when writing the original programs make it easier or harder to factor out common code?

# Was the way you wrote the second program influenced by writing the first?

# Is factoring out as much common code as possible always a good thing? Did the readability of the programs suffer because of this requirement? How about the maintainability?

# Posted by Dave Thomas (@PragDave) Dec 26th, 2013

# my_complex = Complex(2, 3)
# p my_complex

# name = "Alice"
# greeting = "Hello, #{name}!"
# p greeting






# Make a Ruby script to display the current forecast (temperature min/max, description, wind speed, etc.)
# Some features to add to your weather app:
# Display other weather data (min, max, humidity, etc)
# Ask the user for the name of a city to forecast
# Ask the user for preferred temperature units (Celcius or Farenheit)
# Write the app in a loop (once you show the forecast, the user can keep entering different cities until they choose to quit the program)
# Bonus:
# Make a separate web request to display the 5 day forecast: https://openweathermap.org/forecast5
# Make a separate web request to display other data (minute, hourly, historical): https://openweathermap.org/api/one-call-api
# Allow the user to enter a city, and tell them how much warmer/colder it will be tomorrow than right now (this will involve multiple web requests)
# openweathermap.orgopenweathermap.org
# 5 day weather forecast - OpenWeatherMap
# Get a comprehensive 5-day weather forecast for any global location with OpenWeather's reliable and
# easy-to-use API. Offering detailed 3-hourly updates in JSON or XML formats, our forecast API integrates seamlessly with
# geocoding for accurate location data. Customize your weather data experience with options for units of measurement,
# response format, and multilingual support.
# openweathermap.orgopenweathermap.org
# One Call API: weather data for any geographical coordinate - OpenWeatherMap
# One Call API 2.5 is deprecated starting from May 17, 2022, transitioning to the more advanced One Call
# API 3.0. Explore the new version that offers a pay-per-use system, daily free limits, and features such as
# minute-by-minute forecasts for an hour, hourly forecasts for 48 hours, 8-day daily forecasts, and access to historical
# data spanning over 40 years.
# New
# 7:16
# https://openweathermap.org/current
# openweathermap.orgopenweathermap.org
# Current weather data - OpenWeatherMap
# Obtain real-time weather data for any location globally with OpenWeather's Current Weather Data API.
# Provides comprehensive weather details in JSON, XML, or HTML formats, including temperature, pressure, humidity, and
# more. Supports geocoding, language options, and different measurement units.

# React

# Reply












# Message exercises

require 'net/http'
require 'json'
require 'uri'

def fetch_weather(city, api_key, units)
    uri = URI("http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{api_key}&units=#{units}")
    response = Net::HTTP.get(uri)
    JSON.parse(response)
end

def fetch_5day_forecast(city, api_key, units)
    uri = URI("http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{api_key}&units=#{units}")
    response = Net::HTTP.get(uri)
    JSON.parse(response)
end

def display_weather(data)
    p "Current Weather in #{data['name']}, #{data['sys']['country']}:"


api_key = 

loop do 
    p "Enter a city name:"
    city = gets.chomp
    break if city.downcase =='quit'










