module TheMovieDb
  class Response
    def initialize(response)
      @response = response
    end
    
    def body
      JSON.parse(@response.body)
    end

    def success?
      [200, 204].include? @response.code
    end
  end
end
