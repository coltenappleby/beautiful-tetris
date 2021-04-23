# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'colten')
User.create(username: 'Andre')
User.create(username: 'George Costanza')

Score.create(user_id: 1, score: 200)
Score.create(user_id: 1, score: 250)
Score.create(user_id: 1, score: 300)

Score.create(user_id: 1, score: 100)
Score.create(user_id: 1, score: 50)
Score.create(user_id: 1, score: 0)

Score.create(user_id: 2, score: 200)
Score.create(user_id: 2, score: 250)
Score.create(user_id: 2, score: 300)

Score.create(user_id: 2, score: 40)
Score.create(user_id: 2, score: 110)
Score.create(user_id: 2, score: 800)

Score.create(user_id: 3, score: 860630)