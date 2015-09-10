# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.create(pseudo: 'Foo', email: 'foo@bar.com', gravatar: nil, age: 20, moderator: false)
Member.create(pseudo: 'Bar', email: 'bar@bar.com', gravatar: nil, age: 24, moderator: true)
