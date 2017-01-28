# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Hello You!"
puts "这个seeds文件可以自动建立一个admin账号，并且创建5个public jobs,以及5个hidden jobs"

create_account = User.create([email: 'here@airbnb.com', password:'010101', password_confirmation: '010101', is_admin: 'true'])
puts "Admin account created."

create_job = Job.create!([
  title: "Engineering Manager",
  description: "Airbnb’s mission is to create a world where people can Belong Anywhere. As we grow to achieve that mission, we’re looking to add highly technical, hands-on, and mission-driven Engineering Managers to lead our engineering efforts.",
  wage_upper_bound: rand(50..99)*100,
  wage_lower_bound: rand(10..49)*100,
  is_hidden: "false"
])

create_job = Job.create!([
  title: "Search Relevance Engineer",
  description: "Airbnb’s Search Ranking team is the engine of Airbnb’s core product. Airbnb is a two-sided marketplace consisting of hosts and guests who have their own sets of preferences for traveling or hosting on our platform. Our mission is to match these preferences; to feel like a personal concierge for our guests by guiding them to find the perfect listing for a trip and understand the wants and needs of our hosts to ensure an amazing experience.",
  wage_upper_bound: rand(50..99)*100,
  wage_lower_bound: rand(10..49)*100,
  is_hidden: "true"
])

puts "1 Public jobs created."
puts "1 Hidden jobs created."
