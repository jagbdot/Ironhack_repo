require 'imdb'
require "pry"

class Movie
  def initialize
    @title = 
    @
  end
end

class Movies 
  attr_accessor :movies
  def initialize 
    @movies = []
  end
  def search_movie(word)
    Movies.take_nine_movies(Movies.show_movies_with_poster(Movies.check_movies(word)))
  end
  def self.check_movies response
    Imdb::Search.new(response)
  end
  def self.show_movies_with_poster movies
    index = 0
    poster_movies = []
      while poster_movies.length < 9 do 
        if movies.movies[index].poster != nil 
          poster_movies << movies.movies[index].poster
        end
        index += 1
      end
      poster_movies
  end
  def self.take_nine_movies result
    index = 0
    nine_movies = []
      while index < 9 do 
        nine_movies << result[index]
        index += 1
      end
      puts nine_movies.inspect
  end
end
