# Models

rails generate model Movie title:string overview:text poster_url:string rating:float
rails generate model List name:string
rails generate model Bookmark comment:text movie:references list:references

rails
rails db:migrate

rspec spec/models


# Validation
