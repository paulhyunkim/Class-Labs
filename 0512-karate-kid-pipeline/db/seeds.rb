# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

karates = Karate.create([{tournament: 'All Valley Karate Championships', location: 'Encino', date: 'December 19th'}, {tournament: 'Okinawa O-bon Festival', location: 'Okinawa', date: 'June 20th'}, {tournament: 'Rumble with the Alpha Elite', location: 'Boston', date: 'August 12th'} ])
kids = Kid.create([{first_name: "Daniel", last_name: "Larusso", birthday: "January 1", belt_color: "yellow", dojo: "Mr. Miyagi's", signature_move: "Crane Kick"}, {first_name: "Johnny", last_name: "Lawrence", birthday: "June 21", belt_color: "black", dojo: "Cobra Kai", signature_move: "Leg Sweep"}, {first_name: "Terry", last_name: "Silver", birthday: "June 12", belt_color: "black", dojo: "Cobra Kai", signature_move: "QuickSilver"}, {first_name: "Chozen", last_name: "Toguchi", birthday: "October 9", belt_color: "black", dojo: "Sato Toguchi's", signature_move: "Rigged Weights"}, {first_name: "Julie", last_name: "Pierce", birthday: "March 8", belt_color: "white", dojo: "Buddhist Monastary", signature_move: "Bird Training"}])