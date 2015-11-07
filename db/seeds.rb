# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
LearningProposition.create!(
  [
    { name: "Artificial Inteligence Course", session_date: Date.today - 10.day, location: "Poços de Caldas", min_attendees: 5, max_attendees: 10 },
    { name: "Atelie de Software", session_date: Date.today, location: "São Paulo", min_attendees: 5, max_attendees: 10 },
    { name: "Curso de GIT", session_date: Date.today, location:"Poços de Caldas", min_attendees: 3, max_attendees: 10 },
    { name: "Dojo TDD", session_date: Date.today + 10.day, location:"Poços de Caldas", min_attendees: 6, max_attendees: 10 }
  ]

)
Interest.create!(
  [
    {name: "Paulo", email: "paulo@email.com", phone: "3599911993", roles_mask: 0, learning_proposition: LearningProposition.first }
  ]
)
