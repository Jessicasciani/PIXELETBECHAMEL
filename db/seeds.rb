# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg","https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg","https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg"].each do |link|
  PhotoHome.create!(remote_photo_url: link)
end

["https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg","https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg","https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg"].each do |link|
  Folder.create!(client: "nom", remote_photo_url: link)
end

["https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg","https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg","https://cdn.pixabay.com/photo/2016/06/18/17/42/image-1465348_960_720.jpg"].each do |link|
  VideoFolder.create!(client: "nom", remote_photo_url: link)
end
