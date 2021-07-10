# Models

rails generate model Movie title:string overview:text poster_url:string rating:float
rails generate model List name:string
rails generate model Bookmark comment:text movie:references list:references


rails db:migrate

rspec spec/models


# Validation
- Movie

  validates :title, uniqueness: true

- List
  validates :name, uniqueness: true

- Bookmark
  validates



