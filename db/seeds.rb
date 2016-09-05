# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
user1 = User.create!(username: 'Bob')
user2 = User.create!(username: 'Bill')
user3 = User.create!(username: 'Joe')
user4 = User.create!(username: 'Don')

Contact.destroy_all
contact1 = Contact.create!(name: 'Don Smith', email: 'don@gmail.com', user_id: user1.id)
contact2 = Contact.create!(name: 'Bill Smith', email: 'bill@gmail.com', user_id: user1.id)
contact3 = Contact.create!(name: 'Joe Smith', email: 'joe@gmail.com', user_id: user1.id)
contact4 = Contact.create!(name: 'Don Smith', email: 'don@gmail.com', user_id: user2.id)
contact5 = Contact.create!(name: 'Don Smith', email: 'don@gmail.com', user_id: user3.id)
contact6 = Contact.create!(name: 'Joe Smith', email: 'Joe@gmail.com', user_id: user2.id)

ContactShare.destroy_all
contact_share1 = ContactShare.create!(contact_id: contact2.id, user_id: user1.id)
contact_share2 = ContactShare.create!(contact_id: contact3.id, user_id: user1.id)
contact_share3 = ContactShare.create!(contact_id: contact4.id, user_id: user1.id)
contact_share4 = ContactShare.create!(contact_id: contact1.id, user_id: user2.id)
contact_share5 = ContactShare.create!(contact_id: contact2.id, user_id: user3.id)
contact_share6 = ContactShare.create!(contact_id: contact1.id, user_id: user3.id)
