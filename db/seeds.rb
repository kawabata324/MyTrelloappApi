# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# School.create!(name: 'A')
# School.create!(name: 'B')
# school1 = School.first.id
# school2 = School.second.id
# Student.create!(school_id: school1,grade: 2)
# Student.create!(school_id: school2,grade: 1)
# Student.create!(school_id: school2,grade: 3)
student1 = Student.first.id
student2 = Student.find(4).id
Person.create!(student_id: student1, age: 17)
Person.create!(student_id: student2, age: 23)