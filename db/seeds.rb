# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 AdminUser.create!(email: 'navinspm@gmail.com', password: 'password', password_confirmation: 'password')
characters = ('a'..'z').to_a + ('A'..'Z').to_a
# 40.times do 
# 	Dictionary.create!(Word: (0..5).map{characters.sample}.join, synonyms:(0..6).map{characters.sample}.join, antonyms: (0..6).map{characters.sample}.join, related_to: (0..7).map{characters.sample}.join, origin: (0..8).map{characters.sample}.join  )
# end