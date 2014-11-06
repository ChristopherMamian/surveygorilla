require 'faker'

5.times do
  User.create(username: Faker::Internet.user_name, password: Faker::Internet.password)
  Survey.create(title: Faker::Company.catch_phrase, user_id: rand(1..5))
  Question.create(question: Faker::Lorem.sentence  , survey_id: rand(1..5))
  Choice.create(content: Faker::Lorem.word, question_id: rand(1..5))
  Answer.create(choice_id: rand(1..5), user_id: rand(1..5))
end
