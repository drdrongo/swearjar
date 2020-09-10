# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Jar.destroy_all
User.destroy_all
Coin.destroy_all

User.create(
  email: 'hayato@gmail.com',
  password: 'secret'
)

puts 'creating a jar...'
Jar.create(
  current_amount: 200,
  end_amount: 2000,
  goal: 'Take Erica on a Date',
  user: User.first
)

3.times do
  coin = Coin.new(
    amount: 100,
    currency: 'Yen',
  )
  coin.jar = Jar.first
  coin.save
end
