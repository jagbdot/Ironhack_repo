require 'imdb'
require 'pry'
f = File.open('movies.txt', "r")
movies = f.read.split(/\n/) 
f.close

imdb_results = []
ratings = []

#print movies

movies.each do |x|
  i = Imdb::Search.new(x)
  imdb_results << i
end

imdb_results.each do |s|
  
  x = 0
  rating = ""
  #binding.pry
  while rating == "" || rating == nil do 
      rating = s.movies[x].rating
      x += 1
      #binding.pry
  end
  ratings << rating
end

print movies
print ratings
# i.movies.each do |x|
#   puts x.rating
# end 

#puts imdb_results[0].movies[0].mpaa_rating
