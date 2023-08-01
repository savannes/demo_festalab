require 'faker'

puts 'Cleaning database...'
User.destroy_all

puts 'Creating 100 fake users...'
15.times do
  user = User.new(
    name: Faker::BossaNova.artist,
    email: Faker::Internet.email(domain: 'gmail.com'),
    phone: Faker::PhoneNumber.cell_phone,
    cpf: Faker::IDNumber.brazilian_citizen_number
  )
  user.save!
end
puts 'Finished!'
