Photo.destroy_all
Registration.delete_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

rob = User.create(email: "rhwickham@gmail.com", password: "caledon")
cal = User.create(email: "ridek@gmail.com", password: "allsorts")


event = Event.create(name: "Post-Grad Drinks", description: "A celebration now that we've all finally learnt to code!",
location: "De Kromme Haring, Europalaan 16F, Utrecht", price: "16.50", capacity: 30, includes_food: false,
includes_drinks: true, starts_at: DateTime.now, ends_at: DateTime.now, active: true, user: rob)

#how to create multiple seeds:

Category.create!([
  { name: "Outdoors & Adventure"},
  { name: "Tech"},
  { name: "Serious drinking"},
  { name: "Serious thinking"},
  { name: "Food & Drink"},
  ])

  Registration.create([
   { event: event, user: rob, price: event.price, guests_count: 1 },
   { event: event, user: cal, price: event.price, guests_count: 3 },
 ])

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dbk0w1uqs/image/upload/v1507802048/De-Kromme-Haring-10_ihfy6t.jpg", event: event)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dbk0w1uqs/image/upload/v1507801699/guys-drinking_eoh9xu.jpg", event: event)
