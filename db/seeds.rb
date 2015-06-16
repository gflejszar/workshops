# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "bob@example.com", firstname: "bob", lastname: "admin", password: "topsecret", password_confirmation: "topsecret", admin: true )
User.create(email: "john@example.com", firstname: "john", lastname: "user", password: "topsecret", password_confirmation: "topsecret" )
User.create(email: "ed@example.com", firstname: "ed", lastname: "user", password: "topsecret", password_confirmation: "topsecret" )
User.create(email: "luc@example.com", firstname: "luc", lastname: "user", password: "topsecret", password_confirmation: "topsecret" )
User.create(email: "gus@example.com", firstname: "gus", lastname: "user", password: "topsecret", password_confirmation: "topsecret" )