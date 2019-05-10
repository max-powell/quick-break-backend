# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Trip.destroy_all

max = User.create(name: 'Max')
kai = User.create(name: 'Kai')
ali = User.create(name: 'Ali')
fez = User.create(name: 'Fez')

trip = kai.trips.create(name: 'Boys Trip', country: 'Spain', trip_type: 'beach', duration: 7, month: '4')
trip2 = kai.trips.create(name: 'Kai test trip', country: 'France', trip_type: 'city', duration: 7, month: '2')
trip3 = max.trips.create(name: 'Temples', country: 'India', trip_type: 'adventure', duration: 7, month: '10')
trip4 = max.trips.create(name: 'Max test trip', country: 'Australia', trip_type: 'beach', duration: 7, month: '7')
trip5 = ali.trips.create(name: 'Snow', country: 'Canada', trip_type: 'ski', duration: 7, month: '3')
trip6 = ali.trips.create(name: 'Ali test trip', country: 'Belgium', trip_type: 'city', duration: 7, month: '9')
trip7 = fez.trips.create(name: 'Safari', country: 'Kenya', trip_type: 'adventure', duration: 7, month: '10')
trip8 = fez.trips.create(name: 'Fez test trip', country: 'Japan', trip_type: 'city', duration: 7, month: '1')
