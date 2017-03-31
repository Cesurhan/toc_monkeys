# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Workshop.delete_all
Incompany.delete_all

w1=Workshop.create!(title: "WS1", description: "D1", image: "image1", link_to_live_demo: "link1", link_to_github: "linkg1")
w2=Workshop.create!(title: "WS2", description: "D2", image: "image2", link_to_live_demo: "link2", link_to_github: "linkg2")
w3=Workshop.create!(title: "WS3", description: "D3", image: "image3", link_to_live_demo: "link3", link_to_github: "linkg3")
incomp1 = Incompany.create!(first_name: "CO 1", last_name: "Just 1", company_name: "Ajax", email: "tenicia@lol.com", date: "01-04-2017", spaces_available: 100, workshop: w1)
incomp2 = Incompany.create!(first_name: "CO 2", last_name: "Just 2", company_name: "Feyenoord", email: "tenicia@morelol.com", date: "10-04-2017", spaces_available: 10, workshop: w2)
incomp3 = Incompany.create!(first_name: "CO 3", last_name: "Just 3", company_name: "AZ", email: "tenicia@awesomelol.com", date: "01-04-2017", spaces_available: 100, workshop: w3)
