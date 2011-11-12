module Beatwhale
  module Request
    
    API_URL = "api.grooveshark.com/ws3.php?"
    
    def request( method, params = {}, secure = false )
      
      payload = {
        'header' => {
          'wsKey' => self.api_key,
          'sessionID' => self.session
        },
        'method' => method,
        'parameters' => params
      }
      
      data = payload.to_json
      sig = create_signature( data )
      
      query_string = {
        :sig => sig
      }.to_query
      
      url = "#{secure ? "https" : "http"}://#{API_URL}#{query_string}"
      
      begin
        response = RestClient.post(
          url, data,
          :content_type => :json,
          :accept => :json
        )
        
        response = JSON.parse( response )
        
        response
      rescue => e
        puts "an exception happened: #{e.message}"
      end
      
    end
    
    private
    
    def create_signature( data )
      OpenSSL::HMAC.hexdigest(OpenSSL::Digest::Digest.new('md5'), self.api_secret, data)
    end
    
  end
end