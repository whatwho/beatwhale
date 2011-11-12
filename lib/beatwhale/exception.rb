module Beatwhale
  class Exception < StandardError; end
  class RequestException < Exception
    attr_reader :code
  
    def initialize(error)
      @code = error['code']
      @message = error['message']
    end
  
    def to_s
      "Beatwhale::RequestException: #{@message} (error code: #{@code})"
    end
  end
  
end