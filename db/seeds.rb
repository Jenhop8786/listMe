# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Contact.destroy_all
Group.destroy_all
User.destroy_all

user_ids = []
user_ids << User.create(name: "Alexandar Hamilton", email: "hamilton@history.com", password: "secret").id
user_ids << User.create(name: "Whitney Houston", email: "houston@history.com", password: "secret").id

p "2 users created"

group_ids = { user_ids[0] => [], user_ids[1] => [] }

group_ids[user_ids[0]] << Group.create(name: "Client Referrals", user_id: user_ids[0]).id
group_ids[user_ids[0]] << Group.create(name: "Family Referrals", user_id: user_ids[0]).id
group_ids[user_ids[1]] << Group.create(name: "Main Leads", user_id: user_ids[1]).id
group_ids[user_ids[1]] << Group.create(name: "Priority", user_id: user_ids[1]).id

p " #{group_ids.count}created "

group_count = group_ids.length
number_of_contacts = 60
contacts = []


number_of_contacts.times do |_i|
  user_id = user_ids[Random.rand(0...2)]

  new_contact = {
    name: Faker::Name.name,
    email: Faker::Internet.email,
    company: Faker::Company.name,
    phone: Faker::PhoneNumber.cell_phone,
    address: "#{Faker::Address.street_address} #{Faker::Address.zip} #{Faker::Address.city}",
    group_id: group_ids[user_id][Random.rand(0...group_count)],
    user_id: user_id
  }
  contacts.push(new_contact)
end

Contact.create(contacts)

p "#{number_of_contacts} contacts created"
