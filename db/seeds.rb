# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Create fine seed
Faker::Config.locale = 'fr'

arr_lost_points = [1,2,3,4,6]
fines_price = [20,45,160,180]
reason = ["Alcoolémie","Excés de vitesse", "Refus de priorité"]
offer_statut = ["Accepted", "Deny","Waiting"]

User.all.destroy_all
Fine.all.destroy_all
Offer.all.destroy_all

User.create!(email: "test@test.com", password:"testest")

20.times do
  Fine.create!(
              fine_date: Time.at((Time.now.to_f) - rand(3456000)),
              fine_deadline: Time.at((Time.now.to_f) + rand(3456000)),
              point: arr_lost_points.sample,
              price: fines_price.sample,
              reason: reason.sample,
              user_id: User.all.sample.id,
              last_name: Faker::Name.last_name,
              first_name: Faker::Name.first_name)
end

fines = Fine.all
users = User.all

20.times do
  Offer.create!(
              status: offer_statut.sample,
              fine_id: fines.sample.id,
              user_id: users.sample.id)
end
