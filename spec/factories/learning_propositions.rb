FactoryGirl.define do
  factory :learning_proposition do
    name "MyString"
    session_date DateTime.now
    location "MyString"
    min_attendees 2
    max_attendees 5
    password "123456"
  end

end
