require 'open-uri'
require 'json'

Movie.destroy_all

url = "http://tmdb.lewagon.com/movie/top_rated"
doc = URI.open(url).read
json_parsed = JSON.parse(doc)

movies = json_parsed["results"]


movies.each do |movie|
  title = movie["title"]
  overview = movie["overview"]
  poster_url = movie["poster_path"]
  poster_path = "https://image.tmdb.org/t/p/w500/#{poster_url}"
  Movie.create!(title: title, overview: overview, poster_url: poster_path)
end

