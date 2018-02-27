require 'httparty'
require 'the_movie_db/response'

module TheMovieDb
  module TopRated
    class << self
      BASE_URI = "https://api.themoviedb.org/3/movie/top_rated"

      def movies(tmdb_key, query={})
        @movies = HTTParty.get(BASE_URI, query: query.merge!(api_key: tmdb_key))
        TheMovieDb::Response.new(@movies)
      end
    end
  end
end
