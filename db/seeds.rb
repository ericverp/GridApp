# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


country = Country.create!(name: "Switzerland") if Rails.env.development?


manufacturer = Manufacturer.create!(name: "Lighting Products") if Rails.env.development?
distributor = Distributor.create!(name: "First Distributor",email: "testemail@email.com", address: "39 rue de la oiseau, schweiz", telephone: 0123123141, country: country, manufacturer: manufacturer) if Rails.env.development?
product = LightingProduct.create!(name: "First Light",mobile_charging: true, price: 1234.2, num_of_lights:4, num_12v:3, num_5v: 1, daily_output: 13.45, runtime: 12.0, battery_capacity: 8.2,countries: [country], manufacturer: manufacturer, distributors: [distributor]) if Rails.env.development?

respondent = Respondent.create(contact_name: "dummy",phone: "123123213") if Rails.env.development?

surveyresult = SurveyResult.create(respondent: respondent, lighting_products: [product]) if Rails.env.development?