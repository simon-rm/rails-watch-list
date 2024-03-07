Movie.destroy_all
List.create(name: "Action movies")
List.create(name: "Horror movies")
10.times do
movie = Movie.create(
  title:Faker::Movie.title,
  overview:Faker::Lorem.sentence(word_count: 30),
  poster_url: Faker::LoremFlickr.image(size: "300x150"),
  rating: rand(0..5)
  )
list = List.find(rand(1..List.count))
bookmark = Bookmark.new(comment: Faker::Lorem.sentence(word_count: 10))
bookmark.movie, bookmark.list = movie, list
bookmark.save
end
