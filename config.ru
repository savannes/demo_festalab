# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
puts "Loading server...:)"
Rails.application.load_server
puts "Server loaded! :)"
