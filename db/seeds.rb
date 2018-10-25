# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.destroy_all
Car.destroy_all

pee = Person.create({ name: 'Pee', age: 28 })
nee = Person.create({ name: 'Nee', age: 27 })

pee.cars.create({ name: 'koolie', make: 'Honda', model: 'Accord' })
pee.cars.create({ name: 'rookie', make: 'Toyota', model: 'Camry' })

nee.cars.create({ name: 'hottie', make: 'Mini Cooper', model: 'Coupe S' })
nee.cars.create({ name: 'beau', make: 'Mazda', model: 'Mazda 3' })