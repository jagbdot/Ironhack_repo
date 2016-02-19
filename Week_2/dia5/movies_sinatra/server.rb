require "sinatra"
require "sinatra/reloader" if development?
require_relative("lib/movies.rb")

films = Movies.new

get "/" do
  erb(:index)
end

post "/movies" do
  @word = params[:word]
  films.search_movie(@word)
  erb(:movies)
end

