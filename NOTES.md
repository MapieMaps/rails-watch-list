# Models

rails generate model Movie title:string overview:text poster_url:string rating:float
rails generate model List name:string
rails generate model Bookmark comment:text movie:references list:references


rails db:migrate

rspec spec/models


# Validation

- Movie

  has_many :bookmarks

  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

- List

  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, uniqueness: true, presence: true

- Bookmark

  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list }



