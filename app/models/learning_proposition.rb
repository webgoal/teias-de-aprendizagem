class LearningProposition < ActiveRecord::Base
    has_many :interests
    validates :name, :session_date, :location, :min_attendees, :max_attendees, :password, :description, presence: true
    validates :min_attendees, :max_attendees, numericality: { only_integer: true, greater_than_or_equal_to: 2 }
    validates :name, :location, length: {minimum:5}

    def safe_destroy(password)
        if password == self.password
          self.destroy
          return true
        end
        return false
    end

    def self.find_open
      where("session_date > ?", DateTime.now).order(:session_date)
    end

    def self.find_close
      where("session_date <= ?", DateTime.now).order(session_date: :desc)
    end

end
