class LearningProposition < ActiveRecord::Base
    validates :name, :session_date, :location, :min_attendees, :max_attendees, :password, presence: true
    validates :min_attendees, :max_attendees, numericality: { only_integer: true, greater_than_or_equal_to: 2 }
    validates :name, :location, length: {minimum:5}

    def self.find_open
      where("session_date > ?", DateTime.now)
    end
end
