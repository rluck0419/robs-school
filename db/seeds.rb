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
    teacher = Teacher.create!(school_id: school.id, name: 'Prof. ' + ['Oak', 'Elm', 'Birch', 'Rowan', 'Juniper', 'Sycamore', 'Kukui'].sample)
    5.times do
      Student.create!(teacher_id: teacher.id, name: Faker::Pokemon.name)
    end
  end
end
