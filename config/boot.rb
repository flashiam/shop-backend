ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.

# require 'rails/commands/server'
# module Rails
#   class Server
#     def default_options
#       super.merge(Host:  '10.0.2.2', Port: 3000)
#     end
#   end
# end