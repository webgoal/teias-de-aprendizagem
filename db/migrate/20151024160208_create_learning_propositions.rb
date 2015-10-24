class CreateLearningPropositions < ActiveRecord::Migration
  def change
    create_table :learning_propositions do |t|
      t.string :name
      t.datetime :session_date
      t.string :location
      t.integer :min_attendees
      t.integer :max_attendees

      t.timestamps null: false
    end
  end
end
