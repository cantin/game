# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

arr = [*'a'..'z']

(1..65).each do |i|
  User.create! name: arr.sample(5).join
end

(1..10).each do |i|
  Gift.create! name: i.to_s, amount: i
end
