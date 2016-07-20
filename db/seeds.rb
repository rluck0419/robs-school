# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  school = School.create!(name: Faker::Pokemon.location + ' Academy')
  5.times do
    Course.create!(school_id: school.id, name: ["Training 101", "Being the Very Best", "How to Catch'em'all", "Preparing for the Elite Four", "HMs and TMs: Show your moves!", "Conquering Gym Leaders", "Team Rocket: Stopping the Poke-Mafia", "Legendaries: The History of Rare Pokemon"].sample)
    teacher = Teacher.create!(school_id: school.id, name: ("Prof. " + ["Oak", "Elm", "Birch", "Rowan", "Juniper", "Sycamore", "Kukui", "Cozmo", "Silktree", "Westwood", "Willow", "Ivy", "Jacuzzi"].sample))
    6.times do
      Student.create!(teacher_id: teacher.id, name: Faker::Pokemon.name)
    end
  end
end
