json.extract! movie, :id, :title, :director, :release_year, :rating, :listed_in, :created_at, :updated_at
json.url movie_url(movie, format: :json)
