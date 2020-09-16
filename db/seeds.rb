# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create(
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    age: rand(18..65)
  )

  contact = Contact.create(
    phone: FFaker::PhoneNumberBR.phone_number,
    user_id: user.id,
    email: "#{user.first_name}@example.com",
    is_whatsapp: true
  )
end