User.destroy_all

rob = User.create(email: "rhwickham@gmail.com", password: "caledon")

event = Event.create(name: "Post-Grad Drinks", description: "A celebration now that we've all finally learnt to code!",
location: "De Kromme Haring, Europalaan 16F, Utrecht", price: "16.50", capacity: 30, includes_food: false,
includes_drinks: true, starts_at: DateTime.now, ends_at: DateTime.now, active: true, user: rob)
