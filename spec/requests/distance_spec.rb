require "spec_helper"
require './app/controllers/application_controller'
require 'rack/test'

RSpec.describe 'Distance API' do
	include Rack::Test::Methods

  def app
		ApplicationController
	end

	it "returns me json that is a hash with 2 keys" do
    VCR.use_cassette('distance_1_cassette') do
       get "/80211/10"
			 body = JSON.parse(last_response.body, symbolize_names: true)
			 require "pry"; binding.pry
      expect(body).to be_a(Hash)
			expect(body[:radius]).to be_a(Hash)
			expect(body[:radius][:query]).to be_a(Hash)
			expect(body[:radius][:query].keys).to match_array([:code, :unit, :radius, :country])
			expect(body[:radius].keys).to eq([:query, :results])
			body[:radius][:results].each do |radius|
				expect(radius.keys).to match_array([:code, :city, :state, :city_en, :state_en, :distance])
			end
			expect(body[:radius][:results].count).to eq(58)
    end
  end
end
