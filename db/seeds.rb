Dog.destroy_all
User.destroy_all
Adoption.destroy_all

#user data
meredith = User.create(name:"Meredith")
avelon = User.create(name:"Avelon")
alec = User.create(name:"Alec")
winston = User.create(name:"Winston")
jesus = User.create(name:"Jesus")

#shelter data
adopt_a_pup = Shelter.create(name:"Adopt a Pup")

#dog data
balto = Dog.create(name:"Balto", gender: "male", breed: "husky", age: 5, shelter_id: adopt_a_pup.id, adopted: false)
clifford = Dog.create(name:"Clifford", gender: "male", breed: "red lab", age: 2, shelter_id: adopt_a_pup.id, adopted: false)
spot = Dog.create(name:"Spot", gender: "male", breed: "dalmation", age: 1, shelter_id: adopt_a_pup.id, adopted: false)
wishbone = Dog.create(name:"Wishbone", gender: "male", breed: "terrier", age: 9, shelter_id: adopt_a_pup.id, adopted: false)
princess = Dog.create(name:"Princess", gender: "female", breed: "poodle", age: 6, shelter_id: adopt_a_pup.id, adopted: false)
courage = Dog.create(name:"Courage", gender: "male", breed: "chihuahua", age: 3, shelter_id: adopt_a_pup.id, adopted: false)
lassie = Dog.create(name:"Lassie", gender: "female", breed: "collie", age: 2, shelter_id: adopt_a_pup.id, adopted: false)
max = Dog.create(name:"Max", gender: "male", breed: "pug", age: 4, shelter_id: adopt_a_pup.id, adopted: false)
penny = Dog.create(name:"Penny", gender: "female", breed: "pomeranian", age: 1, shelter_id: adopt_a_pup.id, adopted: false)
pluto = Dog.create(name:"Pluto", gender: "female", breed: "german shepard", age: 2, shelter_id: adopt_a_pup.id, adopted: false)
scooby = Dog.create(name:"Scooby", gender: "male", breed: "great dane", age: 8, shelter_id: adopt_a_pup.id, adopted: false)

#adoption data
Adoption.create(user_id: avelon.id, dog_id: balto.id)
Adoption.create(user_id: meredith.id, dog_id: clifford.id)
Adoption.create(user_id: alec.id, dog_id: courage.id)
Adoption.create(user_id: winston.id, dog_id: lassie.id)
Adoption.create(user_id: jesus.id, dog_id: wishbone.id)














puts "Seed file ran"