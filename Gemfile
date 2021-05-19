source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby '2.5.3'
gem 'dotenv'
gem 'pry'
gem 'faraday'
gem 'json'
gem 'fast_jsonapi'
gem "rack"
gem "sinatra"
gem "rake"
gem "pg"
gem "shotgun"
gem 'sinatra-jsonp'
gem 'sinatra-contrib'
gem 'require_all'
gem 'figaro', git: 'https://github.com/bpaquet/figaro.git', branch: 'sinatra'

group :test do
	gem "rack-test"
  gem "rspec"
  gem "webmock"
  gem "vcr"
  gem "simplecov"
end
