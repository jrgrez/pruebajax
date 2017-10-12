# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Complaint.destroy_all
Company.destroy_all
User.destroy_all

20.times do |x|
	Company.create!(name: Faker::Company.name)
end

User.create(email: "joaquingrez@gmail.com", password: "holahola", password_confirmation: "holahola" )
29.times do 
	User.create!(email: Faker::Internet.email, password: "prueba", password_confirmation: "prueba")
end

250.times do
	Complaint.create!(user: User.order("RANDOM()").first, company: Company.order("RANDOM()").first, complaint: Faker::Lorem.sentences(1))
end