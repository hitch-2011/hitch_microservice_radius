require 'sinatra'
require 'sinatra/base'
require 'dotenv'
require 'dotenv/load'
require 'pry'
require 'faraday'
require 'json'
require 'fast_jsonapi'
require './models/radius'
require './app/services/radius_service'

class ApplicationController < Sinatra::Base


  get "/:zipcode/:radius" do
  radius = ZipCodeRadiusService.find_radius(params)
  data = Radius.new(radius).to_json
  end
end
