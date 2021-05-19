class ZipCodeRadiusService
  class << self

    def find_radius(params)
      response = conn.get('/api/v1/radius') do |req|
        req.params['code'] = params[:zipcode]
        req.params['radius'] = params[:radius]
        req.params['unit'] = 'miles'
        req.params['country'] = 'us'
      end
      body = JSON.parse(response.body, symbolize_names: true)
    end

    private

  def conn
     @conn ||= Faraday.new('https://app.zipcodebase.com') do |req|
       req.params['apikey'] = ENV['ZIPCODEBASE_APIKEY']
      end
    end
  end
end
