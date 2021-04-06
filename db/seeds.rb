# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Patient.create(name: 'John', age: '45', gender: 'Male', vaccine: 'Pfizer')
SideEffect.create(patient_id: 1, side_effect: 'Sore arm, slight fever')

Patient.create(name: 'Stephanie', age: '36', gender: 'Female', vaccine: 'Johnson and Johnson')
SideEffect.create(patient_id: 2, side_effect: 'Sore arm')

Patient.create(name: 'Robert', age: '27', gender: 'Male', vaccine: 'Moderna')
SideEffect.create(patient_id: 3, side_effect: 'Chills, sore arm')