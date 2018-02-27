require "the_movie_db/version"
require 'the_movie_db/response'
require 'the_movie_db/top_rated'

module TheMovieDb
  class Client
    def initialize(api_key)
      if api_key.strip.empty?
        raise ArgumentError.new('Missing api key')
      end
      @tmdb_key = api_key
    end

    def top_rated(query={})
      TheMovieDb::TopRated.movies(@tmdb_key, query)
    end
  end
end
