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
# t.string :name
#       t.string :gender
#       t.integer :age
#       t.integer :shelter_id
#       t.boolean :adopted 

balto = Dog.create(name:"Balto", gender: "male", breed: "husky", age: 5, shelter_id: adopt_a_pup.id)
clifford = Dog.create(name:"Clifford", gender: "male", breed: "red lab", age: 2, shelter_id: adopt_a_pup.id)
spot = Dog.create(name:"Spot", gender: "male", breed: "dalmation", age: 1, shelter_id: adopt_a_pup.id)
wishbone = Dog.create(name:"Wishbone", gender: "male", breed: "terrier", age: 9, shelter_id: adopt_a_pup.id)
princess = Dog.create(name:"Princess", gender: "female", breed: "poodle", age: 6, shelter_id: adopt_a_pup.id)
courage = Dog.create(name:"Courage", gender: "male", breed: "chihuahua", age: 3, shelter_id: adopt_a_pup.id)
lassie = Dog.create(name:"Lassie", gender: "female", breed: "collie", age: 2, shelter_id: adopt_a_pup.id)

#adoption data
# t.integer :user_id
# t.integer :dog_id
Adoption.create(user_id: avelon.id, dog_id: balto.id)
Adoption.create(user_id: meredith.id, dog_id: clifford.id)
Adoption.create(user_id: alec.id, dog_id: courage.id)
Adoption.create(user_id: winston.id, dog_id: lassie.id)
Adoption.create(user_id: jesus.id, dog_id: wishbone.id)














puts "Seed file ran"