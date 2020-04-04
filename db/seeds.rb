# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Adding Users
user1 = User.create(email: "user1@test.com", password: "12345678", password_confirmation: "12345678", name: "User1")
user2 = User.create(email: "user2@test.com", password: "12345678", password_confirmation: "12345678", name: "User2")
user3 = User.create(email: "user3@test.com", password: "12345678", password_confirmation: "12345678", name: "User3")
user4 = User.create(email: "user4@test.com", password: "12345678", password_confirmation: "12345678", name: "User4")
 
# Adding topics
user1_topic1 = user1.topics.build(title: "Social Sites")
user1_topic1.save
user1_topic2 = user1.topics.build(title: "College Life")
user1_topic2.save
user2_topic1 = user2.topics.build(title: "Health")
user2_topic1.save
user3_topic1 = user3.topics.build(title: "Movies")
user3_topic1.save
user3_topic2 = user3.topics.build(title: "Love Marriage")
user3_topic2.save
# Adding Questions
question1 = user1_topic1.questions.build(title: "Social Sites are good?", user_id: user1.id)
question1.save
question2 = user1_topic1.questions.build(title: "Social Sites are increasing rumours?", user_id: user2.id)
question2.save
question3 = user1_topic2.questions.build(title: "How to study in college?", user_id: user1.id)
question3.save
question4 = user1_topic2.questions.build(title: "Which subject to choose?", user_id: user3.id)
question4.save
question5 = user2_topic1.questions.build(title: "How to do meditations?", user_id: user2.id)
question5.save
question6 = user2_topic1.questions.build(title: "Affect of Gym?", user_id: user4.id)
question6.save
question7 = user3_topic1.questions.build(title: "Which movies are good?", user_id: user3.id)
question7.save
question8 = user3_topic1.questions.build(title: "How to direct a movie?", user_id: user4.id)
question8.save
question9 = user3_topic2.questions.build(title: "Love marriage is good?", user_id: user1.id)
question9.save
question10 = user3_topic2.questions.build(title: "How to register for love marriage?", user_id: user1.id)
question10.save
# Adding Answers

question1.answers.build(description: "Yes", user_id: user4.id).save
question1.answers.build(description: "No", user_id: user1.id).save
question1.answers.build(description: "Yes", user_id: user3.id).save

question2.answers.build(description: "Yes", user_id: user2.id).save
question2.answers.build(description: "Yes", user_id: user4.id).save
question2.answers.build(description: "Yes", user_id: user4.id).save
question2.answers.build(description: "No", user_id: user3.id).save


question3.answers.build(description: "By Addmission", user_id: user3.id).save
question3.answers.build(description: "Attend Class Regularly", user_id: user1.id).save
question3.answers.build(description: "Making self Notes", user_id: user2.id).save


question4.answers.build(description: "Maths", user_id: user4.id).save
question4.answers.build(description: "Commerce", user_id: user1.id).save
question4.answers.build(description: "Maths", user_id: user2.id).save