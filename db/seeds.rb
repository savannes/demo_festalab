require 'faker'

puts 'Cleaning database...'
User.destroy_all

puts 'Creating 100 fake users...'
100.times do
  user = User.new(
    name: Faker::BossaNova.artist,
    email: Faker::Internet.free_email,
    phone: Faker::Number.number(digits:11),
    cpf: Faker::IDNumber.brazilian_citizen_number
  )
  user.save!
end
puts 'Finished!'
