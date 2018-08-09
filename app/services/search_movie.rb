require 'open-uri'
require 'json'
require 'dotenv'

Dotenv.load('.env')

class SearchMovie
  attr_accessor :movie

  def self.perform(title)
    Tmdb::Api.key(ENV["TMDB-API-KEY"])
    Tmdb::Api.language("en")
    @movie = Tmdb::Movie("#{title}")
  end
end
