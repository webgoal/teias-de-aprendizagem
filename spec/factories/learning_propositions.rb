FactoryGirl.define do
  factory :learning_proposition_1, class: "LearningProposition" do
    name "Artificial Inteligence Course"
    session_date DateTime.now - 10.day
    location "MyString"
    min_attendees 2
    max_attendees 5
    password "123456"
  end

  factory :learning_proposition_2, class: "LearningProposition" do
    name "Atelie de Software"
    session_date DateTime.now - 20.day
    location "MyString"
    min_attendees 2
    max_attendees 5
    password "123456"
  end

  factory :learning_proposition_3, class: "LearningProposition" do
    name "Curso de GIT"
    session_date DateTime.now
    location "MyString"
    min_attendees 2
    max_attendees 5
    password "123456"
  end

  factory :learning_proposition_4, class: "LearningProposition" do
    name "Dojo TDD"
    session_date DateTime.now + 10.day
    location "MyString"
    min_attendees 2
    max_attendees 5
    password "123456"
  end

end
