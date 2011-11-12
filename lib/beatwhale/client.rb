module Beatwhale
  
  class Client
    
    include Beatwhale::Request

    attr_accessor :api_key, :api_secret, :ip
    attr_accessor :country, :session
    
    def initialize( api_key, api_secret, ip, session_cache_file )
      self.api_key    = api_key
      self.api_secret = api_secret
      self.ip         = ip
      
      get_session( session_cache_file )
      get_country
    end
    
    def search_songs( query )
      params = {
        :query => query,
        :country => self.country,
        :limit => 50,
        :offset => 0
      }
      response = request( "getSongSearchResults", params )
      
      response["result"]["songs"].map{ |data| Song.new( data ) }
    end
    
    def get_stream_key_by_song( song )
      get_stream_key_by_song_id( song.song_id )
    end
    
    def get_stream_key_by_song_id( song_id )
      params = {
        :songID => song_id,
        :country => self.country,
        :lowBitrate => false
      }
      response = request( "getStreamKeyStreamServer", params )
    end
    
    private
    
    def get_session( session_cache_file )
      if File.exists?( session_cache_file )
        self.session = File.read( session_cache_file )
        return
      end
      
      response = request( "startSession", {}, true )
      self.session = response["result"]["sessionID"]
      File.open( session_cache_file, "w" ) do |file|
        file.write self.session
      end
      self.session
    end
    
    def get_country
      params = { :ip => self.ip }
      response = request( "getCountry", params )
      self.country = response["result"]
    end
    
  end
  
end