50.times do
movie = Movie.create(
  title:Faker::Movie.title,
  overview:Faker::Lorem.sentence(word_count: 30),
  poster_url: Faker::LoremFlickr.image(size: "300x150"),
  rating: rand(0..5)
  )
end
