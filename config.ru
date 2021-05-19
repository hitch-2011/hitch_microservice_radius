require 'sinatra/base'
require 'bundler'
# require_relative 'zipcode_base_api'

require './app/controllers/application_controller'

require 'figaro/sinatra'
Bundler.require
map('/distance') { run ApplicationController }
run Sinatra::Application
