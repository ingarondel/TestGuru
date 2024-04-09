# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

users = User.create([
  {
    name: 'Inga',
    admin: '0'
  },
 {
    name: 'Admin',
    admin: '1'
  }
])
categories = Category.create([
{

	title: 'programming'
}])
tests = Test.create( [
  {
    category_id: 1,
    title: 'C++',
    level: 3
  },
  {
    category_id: 1,
    title: 'C+',
    level: 3
  },
  {
    category_id: 1,
    title: 'C#',
    level: 3
  },
  {
    category_id: 1,
    title: 'Java',
    level: 3
  },
  {
    category_id: 1,
    title: 'Kotlin',
    level: 3
  }
])

questions = Question.create([
{	body: 'Which keyword is used to define a constant variable in Java?',
    test_id: 4
}
])

answers = Answer.create([
{
	body: 'final',
    correct: 0,
    question_id: 1
},
{
	body: 'static',
    correct: 0,
    question_id: 1
},
{
	body: 'const',
    correct: 1,
    question_id: 1
}
])
