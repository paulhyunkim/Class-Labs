# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



dragons = Dragon.create([
  	{name: "Drogon", size: "large", color: "black and red", age: 3, is_firebreathing: true },
  	{name: "Rhaegal", size: "medium", color: "green and bronze", age: 3, is_firebreathing: true},
  	{name: "Viserion", size: "medium", color: "white and gold", age: 3, is_firebreathing: true},
  	{name: "Smaug", size: "very large", color: "red and gold", age: 2000, is_firebreathing: true}
  	])
