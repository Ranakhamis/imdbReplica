json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :description, :genre, :director, :rating, :date
  json.url movie_url(movie, format: :json)
end
