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
  Movie.create!(title: title, overview: overview)
end

