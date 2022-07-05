puts "Start Seeding"

Comment.destroy_all
Photo.destroy_all
Category.destroy_all

puts "Seeding Categories"

cat1 = Category.create(name: "Wallpapers", description: "From epic drone shots to inspiring moments in nature, find free HD wallpapers worthy of your screens.")
cat2 = Category.create(name: "Nature", description: "Let's celebrate the magic of Mother Earth — with images of everything our planet has to offer.")
cat3 = Category.create(name: "People", description: "Real people, captured. Photography has the power to reflect the world around us, give voice to individuals and groups.")


puts "Seeding Photos"

photo1 = Photo.create(title: "Purple lake", description: "Nice and big purple lake", category: cat2)
photo2 = Photo.create(title: "Green plant", description: "Nice and big purple lake", category: cat2)
photo3 = Photo.create(title: "Lonely bird", description: "Nice and big purple lake", category: cat2)

puts "Seeding Comments"

comment1 = Comment.create(content: "This is an example of a comment for this category.", commentable: cat2)
comment2 = Comment.create(content: "This is an example of a comment for this category.", commentable: cat2)
comment3 = Comment.create(content: "This is an example of a comment for this photo.", commentable: photo1)
comment4 = Comment.create(content: "This is an example of a comment for this photo.", commentable: photo1)

puts "End Seeding"

