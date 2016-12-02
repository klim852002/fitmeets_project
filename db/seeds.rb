# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seed users
User.create! name: 'user1', contact_number: 91234567, address: '10 Claymore Hill', postal_code: 123981, favourite_sports: 'Soccer', email: 'user1@email.com', password: 'password1', password_confirmation: 'password1'

User.create! name: 'user2', contact_number: 92345678, address: '1 Orchard Rd', postal_code: 123982, favourite_sports: 'Badminton', email: 'user2@email.com', password: 'password2', password_confirmation: 'password2'

User.create! name: 'user3', contact_number: 93456789, address: '80 River Valley', postal_code: 123983, favourite_sports: 'Water polo', email: 'user3@email.com', password: 'password3', password_confirmation: 'password3'

User.create! name: 'user4', contact_number: 94567890, address: '999 Bedok Reservior', postal_code: 123984, favourite_sports: 'Surfing, Parkour', email: 'user4@email.com', password: 'password4', password_confirmation: 'password4'

User.create! name: 'user5', contact_number: 95678901, address: '2 Scotts Rd', postal_code: 123985, favourite_sports: 'Bowling', email: 'user5@email.com', password: 'password5', password_confirmation: 'password5'

 # seed events
Event.create! event_name: "Soccer kickabout", event_date: "", event_time: "", event_address: '48 Saint Thomas Walk', sports_cat: 'Football', postal_code: 238126, players_req: 8, picture: "https://celebreak.eu/wp-content/uploads/2016/03/featured-side-2.jpg", details: 'come join us on a weekly friendly games. Most of us are in the 30s - 40s age group.'

Event.create! event_name: "Badminton games", event_date: "", event_time: "", event_address: 'Hougang CC', sports_cat: 'Badminton', postal_code: 238121, players_req: 4, picture: "https://aos.iacpublishinglabs.com/question/aq/700px-394px/objectives-of-badminton_6b97ba3f-0f82-49b0-b4bf-785d599166c1.jpg?domain=cx.aos.ask.com", details: 'Casual meetup of badminton players.'
